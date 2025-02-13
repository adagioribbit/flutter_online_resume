import 'package:flutter/material.dart';
import 'dart:math' show pi, min;

import '../helpers/utils.dart';
import 'resume_presentation.dart';
import 'squared_sheet.dart';

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
  final double frontCoverMarkupTiltAngle;

  /// This must be expressed in radiants like so : -(pi / 40) (with import 'dart:math' show pi;)
  final double stickerRotationAngle;

  /// Max. 15.0 for a 19 letters long label
  final double stickerFontSize;
  final String stickerLabelText;
  final Color folderMainColor, stickerLabelColor;
  final Widget folderContent;

  const ManilaFolder(
      {this.stickerLabelText = "Classified",
      this.folderMainColor = const Color.fromARGB(255, 206, 184, 143),
      this.stickerLabelColor = const Color.fromARGB(255, 241, 242, 232),
      this.stickerRotationAngle = -(pi / 40),
      this.stickerFontSize = 10.0,
      this.hasFrontCoverMarkup = false,
      this.frontCoverMarkupTextStyle = const TextStyle(
          fontSize: 80.0, fontFamily: "Handwritten", color: Colors.black),
      this.frontCoverMarkupTiltAngle = 0.0,
      this.folderContent = const ResumePresentation(
        animatedScaleFactor: 30.0,
      ),
      super.key});

  @override
  State<ManilaFolder> createState() => _ManilaFolderState();
}

class _ManilaFolderState extends State<ManilaFolder>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animOpenFolder;
  late Color _folderBorderColor;
  late double fitScreenZoomFactor;
  late BoxConstraints folderBackProportions, folderCoverProportions;
  late double _frontCoverMarkupAdjustedFontSize;
  late double parentDimensionRatio, heightToParentRatio, widthToParentRatio;
  AnimationStatus _status = AnimationStatus.dismissed;

  /* Inner tweaking parameters*/
  double beginAnimOpenFolder = 0.01;
  double endAnimOpenFolder = 0.7;
  int durationAnimOpenFolder = 500;
  double folderBorderLightnessDiff = 0.05;

  static const double folderTsfrm_perspectiveAngle = 0.0005;
  static const double folderTsfrm_zoomFactor = 1.0;
  static const double folderTsfrm_rotationX = -0.2;
  static const double folderTsfrm_rotationY = -0.05;
  static const double folderTsfrm_rotationZ = -0.05;

  static const Color folderBackBoxShadowColor = Color.fromARGB(109, 0, 0, 0);
  static const Offset folderBackBoxShadowOffset = Offset(5, 12);
  EdgeInsetsDirectional folderBackMargin =
      EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0);

  // 221 en plein écran / 200 en largeur minimale
  Offset folderBackTransformOrigin = Offset(0, 200);
  Offset folderCoverTransformOrigin = Offset(0, 50);
  double folderCoverPerspective = 0.0005;
  double folderCoverCornerRadius = 2.0;
  static const Color folderCoverBoxShadowColor =
      const Color.fromARGB(98, 75, 75, 75);
  double folderCoverBoxShadowSpreadRadius = 0;
  double folderCoverBoxShadowBlurRadius = 10;
  Offset folderCoverBoxShadowOffset = Offset(0, -2);
  EdgeInsetsDirectional folderCoverMargin =
      EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0);

  EdgeInsetsDirectional folderTabLabelPadding =
      EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5);
  EdgeInsetsDirectional folderTabMargin =
      EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0);

  /* ******************************* */

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: durationAnimOpenFolder));

    _animOpenFolder = Tween(begin: beginAnimOpenFolder, end: endAnimOpenFolder)
        .animate(CurvedAnimation(
            parent: _controller, curve: Curves.easeInOutCubicEmphasized))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });

    HSLColor folderHSLColor = HSLColor.fromColor(widget.folderMainColor);
    _folderBorderColor = folderHSLColor
        .withLightness(folderHSLColor.lightness - folderBorderLightnessDiff)
        .toColor();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    parentDimensionRatio =
        MediaQuery.of(context).size.height / MediaQuery.of(context).size.width;
    heightToParentRatio = ManilaFolder.fixedFolderProportions.maxHeight /
        MediaQuery.of(context).size.height;
    widthToParentRatio = ManilaFolder.fixedFolderProportions.maxWidth /
        MediaQuery.of(context).size.width;

    if (Utils.isPhoneScreen(context) || Utils.isFoldable(context)) {
      fitScreenZoomFactor = heightToParentRatio;
      folderBackProportions = BoxConstraints(
        maxHeight: 440 / widthToParentRatio,
        minHeight: 440 / widthToParentRatio,
        minWidth: 650 / widthToParentRatio,
        maxWidth: 650 / widthToParentRatio,
      );
      folderCoverProportions = BoxConstraints(
        maxHeight: 430 / widthToParentRatio,
        minHeight: 430 / widthToParentRatio,
        minWidth: 645 / widthToParentRatio,
        maxWidth: 645 / widthToParentRatio,
      );

      folderCoverTransformOrigin =
          Offset(0, folderCoverProportions.maxHeight / 1.75);
      folderBackTransformOrigin = Offset(0, folderCoverTransformOrigin.dy);
      _frontCoverMarkupAdjustedFontSize =
          widget.frontCoverMarkupTextStyle.fontSize! / widthToParentRatio;
    } else {
      fitScreenZoomFactor = min(heightToParentRatio, widthToParentRatio);
      folderBackProportions = ManilaFolder.fixedFolderProportions;
      folderCoverProportions = ManilaFolder.fixedFolderProportions;

      folderCoverTransformOrigin = Offset(
          0,
          ManilaFolder.fixedFolderProportions.maxHeight /
              (1.5 + fitScreenZoomFactor));
      folderBackTransformOrigin = Offset(0, folderCoverTransformOrigin.dy);
      _frontCoverMarkupAdjustedFontSize =
          widget.frontCoverMarkupTextStyle.fontSize!;
    }
    setState(() => {});
  }

  Transform buildFolderTransform(
      {double perspectiveAngle = folderTsfrm_perspectiveAngle,
      double zoomFactor = folderTsfrm_zoomFactor,
      double rotationX = folderTsfrm_rotationX,
      double rotationY = folderTsfrm_rotationY,
      double rotationZ = folderTsfrm_rotationZ,
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
            color: folderBackBoxShadowColor,
            spreadRadius: 0,
            blurRadius: 15,
            offset: folderBackBoxShadowOffset,
          ),
        ],
      ),
      constraints: folderBackProportions,
      margin: folderBackMargin,
    );

    Transform folderCoverMarkup = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          ..rotateZ(pi * widget.frontCoverMarkupTiltAngle),
        child: Text(widget.stickerLabelText,
            style: TextStyle(
                fontSize: _frontCoverMarkupAdjustedFontSize,
                fontFamily: widget.frontCoverMarkupTextStyle.fontFamily,
                color: widget.frontCoverMarkupTextStyle.color
                    ?.withAlpha(255 - (345 * _animOpenFolder.value).round()),
                backgroundColor:
                    widget.frontCoverMarkupTextStyle.backgroundColor)));

    Transform folderCover = Transform(
        alignment: FractionalOffset.center,
        origin: folderCoverTransformOrigin,
        transform: Matrix4.identity()
          ..setEntry(3, 2, folderCoverPerspective)
          ..rotateX(pi * _animOpenFolder.value),
        child: Container(
          decoration: BoxDecoration(
            color: widget.folderMainColor,
            border: Border.all(color: _folderBorderColor),
            borderRadius:
                BorderRadius.all(Radius.circular(folderCoverCornerRadius)),
            boxShadow: [
              BoxShadow(
                color: folderCoverBoxShadowColor,
                spreadRadius: folderCoverBoxShadowSpreadRadius,
                blurRadius: folderCoverBoxShadowBlurRadius,
                offset: folderCoverBoxShadowOffset,
              ),
            ],
          ),
          constraints: folderCoverProportions,
          margin: folderCoverMargin,
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
            padding: folderTabLabelPadding,
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
      margin: folderTabMargin,
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

    return widget.folderContent;
    //return GestureDetector(
    //    onTap: () {
    //      if (_status == AnimationStatus.dismissed) {
    //        _controller.forward();
    //      } else {
    //        _controller.reverse();
    //      }
    //    },
    //    child: buildFolderTransform(
    //        zoomFactor: 6.0 * fitScreenZoomFactor,
    //        rotationX: 0,
    //        rotationY: 0,
    //        rotationZ: 0,
    //        child: Stack(fit: StackFit.passthrough, children: [
    //          /* Conteneur extérieur */
    //          Transform(
    //              alignment: FractionalOffset.center,
    //              origin: folderBackTransformOrigin,
    //              transform: Matrix4.identity()
    //                ..setEntry(
    //                    3, 2, 0.0005 * heightToParentRatio) // Inclinaison
    //                ..rotateX(pi *
    //                    -_animOpenFolder.value /
    //                    (12 + (parentDimensionRatio + heightToParentRatio))),
    //              child: Row(
    //                  mainAxisAlignment: MainAxisAlignment.center,
    //                  crossAxisAlignment: CrossAxisAlignment.center,
    //                  children: [
    //                    Column(
    //                        mainAxisAlignment: MainAxisAlignment.start,
    //                        crossAxisAlignment: CrossAxisAlignment.start,
    //                        children: [
    //                          /* FolderTab container */
    //                          Row(
    //                            mainAxisAlignment: MainAxisAlignment.start,
    //                            crossAxisAlignment: CrossAxisAlignment.end,
    //                            children: [folderTab, folderTabConnexion],
    //                          ),
    //                          folderBack
    //                        ])
    //                  ])),
    //          Transform(
    //              alignment: FractionalOffset.center,
    //              origin: Offset.zero,
    //              transform: Matrix4.identity()
    //                // Translate Y
    //                ..setEntry(1, 3, -folderBackProportions.maxHeight)
    //                ..setEntry(3, 3, 0.75 / fitScreenZoomFactor)
    //                ..rotateZ(0.5 * pi),
    //              child: widget.folderContent),
    //          Row(
    //              mainAxisAlignment: MainAxisAlignment.center,
    //              crossAxisAlignment: CrossAxisAlignment.center,
    //              children: [
    //                Column(
    //                    mainAxisAlignment: MainAxisAlignment.start,
    //                    crossAxisAlignment: CrossAxisAlignment.start,
    //                    children: [folderCover])
    //              ])
    //        ])));
  }
}
