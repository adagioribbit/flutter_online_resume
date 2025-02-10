import 'package:flutter/material.dart';
import 'dart:math' show pi, min;

import '../helpers/utils.dart';

class ManilaFolder extends StatefulWidget {
  static const BoxConstraints fixedFolderProportions = BoxConstraints(
    maxHeight: 440,
    minHeight: 440,
    minWidth: 650,
    maxWidth: 650,
  );

  /// Whether the label text should also be handwritten on the folder front cover
  final bool hasFrontCoverMarkup;
  final TextStyle frontCoverMarkupTextStyle;

  /// This must be expressed in radiants like so : -(pi / 40) (with import 'dart:math' show pi;)
  final double stickerRotationAngle;

  /// Max. 15.0 for a 19 letters long label
  final double stickerFontSize;
  final String stickerLabelText;
  final Color folderMainColor, stickerLabelColor;

  const ManilaFolder(
      {this.stickerLabelText = "Classified",
      this.folderMainColor = const Color.fromARGB(255, 206, 184, 143),
      this.stickerLabelColor = const Color.fromARGB(255, 241, 242, 232),
      this.stickerRotationAngle = -(pi / 40),
      this.stickerFontSize = 10.0,
      this.hasFrontCoverMarkup = false,
      this.frontCoverMarkupTextStyle = const TextStyle(
          fontSize: 80.0, fontFamily: "Handwritten", color: Colors.black),
      super.key});

  @override
  State<ManilaFolder> createState() => _ManilaFolderState();
}

class _ManilaFolderState extends State<ManilaFolder>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Color _folderBorderColor;
  late double fitScreenZoomFactor;
  late BoxConstraints folderProportions;
  AnimationStatus _status = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    _animation = Tween(end: 0.7, begin: 0.01).animate(CurvedAnimation(
        parent: _controller, curve: Curves.easeInOutCubicEmphasized))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });

    HSLColor folderHSLColor = HSLColor.fromColor(widget.folderMainColor);
    _folderBorderColor =
        folderHSLColor.withLightness(folderHSLColor.lightness - 0.05).toColor();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    double heightRatio = ManilaFolder.fixedFolderProportions.maxHeight /
        MediaQuery.of(context).size.height;
    double widthRatio = ManilaFolder.fixedFolderProportions.maxWidth /
        MediaQuery.of(context).size.width;

    if (Utils.isPhoneScreen(context) || Utils.isFoldable(context)) {
      fitScreenZoomFactor = heightRatio;
      folderProportions = BoxConstraints(
        maxHeight: 440 / widthRatio,
        minHeight: 440 / widthRatio,
        minWidth: 650 / widthRatio,
        maxWidth: 650 / widthRatio,
      );
    } else {
      fitScreenZoomFactor = min(heightRatio, widthRatio);
      folderProportions = BoxConstraints(
        maxHeight: 440,
        minHeight: 440,
        minWidth: 650,
        maxWidth: 650,
      );
    }

    print("$heightRatio, $widthRatio, $fitScreenZoomFactor");
    setState(() => {});
  }

  Transform buildFolderTransform(
      {double perspectiveAngle = 0.0005,
      double zoomFactor = 1.0,
      double rotationX = -0.2,
      double rotationY = -0.05,
      double rotationZ = -0.05,
      required Widget child}) {
    return Transform(
        alignment: FractionalOffset.center,
        origin: Offset(0, 50),
        transform: Matrix4.identity()
          ..setEntry(3, 2, perspectiveAngle)
          ..setEntry(3, 3, zoomFactor)
          ..rotateX(pi * rotationX)
          ..rotateY(pi * rotationY)
          ..rotateZ(pi * rotationZ),
        child: child);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Container folderBack = Container(
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(color: _folderBorderColor),
            right: BorderSide(color: _folderBorderColor),
            bottom: BorderSide(color: _folderBorderColor)),
        color: widget.folderMainColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(4.0),
            bottomRight: Radius.circular(4.0),
            topRight: Radius.circular(4.0)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(109, 0, 0, 0),
            spreadRadius: 0,
            blurRadius: 15,
            offset: Offset(5, 12),
          ),
        ],
      ),
      constraints: folderProportions,
      margin: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 50),
    );

    Text folderCoverMarkup = Text(widget.stickerLabelText,
        style: TextStyle(
            fontSize: widget.frontCoverMarkupTextStyle.fontSize,
            fontFamily: widget.frontCoverMarkupTextStyle.fontFamily,
            color: widget.frontCoverMarkupTextStyle.color,
            backgroundColor: widget.frontCoverMarkupTextStyle.backgroundColor));

    Transform folderCover = Transform(
        alignment: FractionalOffset.center,
        origin: Offset(0, 221),
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.0005)
          ..rotateX(pi * _animation.value),
        child: Container(
          decoration: BoxDecoration(
            color: widget.folderMainColor,
            border: Border.all(color: _folderBorderColor),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(98, 75, 75, 75),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          constraints: folderProportions,
          margin: EdgeInsetsDirectional.fromSTEB(50, 60, 50, 50),
          child: Container(
            decoration: BoxDecoration(
              color: widget.folderMainColor,
            ),
            alignment: Alignment.center,
            child: widget.hasFrontCoverMarkup ? folderCoverMarkup : null,
          ),
        ));

    Transform folderTabLabel = Transform.rotate(
        angle: widget.stickerRotationAngle,
        child: Container(
            padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
            decoration: BoxDecoration(
              color: widget.stickerLabelColor,
              border: Border.all(color: _folderBorderColor),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                  bottomLeft: Radius.circular(4.0),
                  bottomRight: Radius.circular(4.0)),
            ),
            child: Text(widget.stickerLabelText,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: widget.stickerFontSize))));

    Container folderTab = Container(
      width: 150,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(color: _folderBorderColor),
            top: BorderSide(color: _folderBorderColor)),
        color: widget.folderMainColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
      ),
      constraints: BoxConstraints(
        minHeight: 45,
        minWidth: 50,
      ),
      margin: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
      child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [folderTabLabel]),
    );

    Container folderTabConnexion = Container(
      width: 15,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          stops: [0, 0.2, 0.2, 1],
          colors: [
            Colors.transparent,
            Colors.transparent,
            widget.folderMainColor,
            widget.folderMainColor,
          ],
          center: Alignment.topRight,
          radius: 5,
        ),
      ),
      constraints: BoxConstraints(
        minHeight: 15,
      ),
    );

    return GestureDetector(
        onTap: () {
          if (_status == AnimationStatus.dismissed) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
        },
        child: buildFolderTransform(
            zoomFactor: 4.0 * fitScreenZoomFactor,
            rotationX: 0,
            rotationY: 0,
            rotationZ: 0,
            child: Stack(fit: StackFit.passthrough, children: [
              /* Conteneur extérieur */
              Transform(
                  alignment: FractionalOffset.center,
                  origin: Offset(0, 50),
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.0005) // Inclinaison
                    ..rotateX(pi * -_animation.value / 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /* FolderTab container */
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [folderTab, folderTabConnexion],
                              ),
                              folderBack
                            ])
                      ])),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [folderCover])
                  ])
            ])));
  }
}
