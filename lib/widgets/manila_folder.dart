// Loosely based on FlutterFxFolder
// https://github.com/flutterfx/flutterfx_widgets/tree/f8bde010dd4c43086e47bd8073e66c6086840eb0

import 'package:flutter/material.dart';
import 'dart:math' show pi, min, max;

import '../helpers/colorchart.dart';
import '../helpers/utils.dart';
import 'resume_presentation.dart';

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
      this.folderMainColor = ColorChart.folderMainColor,
      this.stickerLabelColor = ColorChart.stickerLabelColor,
      this.stickerRotationAngle = -(pi / 40),
      this.stickerFontSize = 10.0,
      this.hasFrontCoverMarkup = false,
      this.frontCoverMarkupTextStyle = const TextStyle(
          fontSize: 80.0, fontFamily: "Handwritten", color: Colors.black),
      this.frontCoverMarkupTiltAngle = 0.0,
      this.folderContent = const ResumePresentation(
        animatedScaleFactor: 25.0,
      ),
      super.key});

  @override
  State<ManilaFolder> createState() => _ManilaFolderState();
}

class _ManilaFolderState extends State<ManilaFolder>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _controllerOpenFolder, _controllerRevealContent;
  late Animation _animOpenFolder, _animRotateContent, _animRevealContent;
  late Color _folderBorderColor;
  late double fitScreenZoomFactor;
  late BoxConstraints folderBackProportions, folderCoverProportions;
  late double _frontCoverMarkupAdjustedFontSize;
  late double parentDimensionRatio,
      heightToParentRatio,
      widthToParentRatio,
      folderContentScaleFactor,
      folderContentTranslationY;
  AnimationStatus _status = AnimationStatus.dismissed;

  /* Inner tweaking parameters*/
  double beginAnimOpenFolder = 0.01;
  double endAnimOpenFolder = 0.7;
  int durationAnimOpenFolder = 1250;
  double beginAnimRotateContent = 1.0;
  double endAnimRotateContent = 0.0;
  double beginAnimRevealContent = 1.0;
  double endAnimRevealContent = -0.2;
  int durationAnimRevealContent = 1000;
  double folderBorderLightnessDiff = 0.05;

  static const double folderTransformPerspectiveAngle = 0.0005,
      folderTransformZoomFactor = 1.0,
      folderTransformRotationX = -0.2,
      folderTransformRotationY = -0.05,
      folderTransformRotationZ = -0.05;

  EdgeInsetsDirectional folderBackMargin =
      EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0);

  Offset folderBackTransformOrigin = Offset(0, 200);
  Offset folderCoverTransformOrigin = Offset(0, 50);
  double folderCoverPerspective = 0.0005;
  double folderCoverCornerRadius = 2.0;
  static const Offset folderBackBoxShadowOffset = Offset(5, 12);
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

  double getRevealAnimationBegin() {
    if (Utils.isTabletScreen(context)) {
      return 0.8;
    } else {
      return 1.0;
    }
  }

  double getRevealAnimationEnd() {
    if (Utils.isTabletScreen(context)) {
      return -0.7;
    } else {
      return -0.2;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _controllerOpenFolder = AnimationController(
        vsync: this, duration: Duration(milliseconds: durationAnimOpenFolder));

    _animOpenFolder = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween(begin: beginAnimOpenFolder, end: endAnimOpenFolder),
          weight: 100 / 3,
        ),
        TweenSequenceItem<double>(
          tween: Tween(begin: endAnimOpenFolder, end: endAnimOpenFolder),
          weight: 200 / 3,
        ),
      ],
    ).animate(CurvedAnimation(
        parent: _controllerOpenFolder, curve: Curves.easeInOutCubicEmphasized))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });

    _controllerRevealContent = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: durationAnimRevealContent));

    _animRotateContent = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween:
              Tween(begin: beginAnimRotateContent, end: beginAnimRotateContent),
          weight: 250 / 3,
        ),
        TweenSequenceItem<double>(
          tween:
              Tween(begin: beginAnimRotateContent, end: endAnimRotateContent),
          weight: 50 / 3,
        ),
      ],
    ).animate(CurvedAnimation(
        parent: _controllerRevealContent,
        curve: Curves.easeInOutCubicEmphasized))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });

    _animRevealContent = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween:
              Tween(begin: beginAnimRevealContent, end: beginAnimRevealContent),
          weight: 250 / 3,
        ),
        TweenSequenceItem<double>(
          tween:
              Tween(begin: beginAnimRevealContent, end: endAnimRevealContent),
          weight: 50 / 3,
        ),
      ],
    ).animate(CurvedAnimation(
        parent: _controllerRevealContent,
        curve: Curves.easeInOutCubicEmphasized))
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

    fitScreenZoomFactor = ManilaFolder.fixedFolderProportions.maxHeight /
        ManilaFolder.fixedFolderProportions.maxWidth;
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

    fitScreenZoomFactor = min(heightToParentRatio, widthToParentRatio);
    if (Utils.isPhoneScreen(context) || Utils.isFoldable(context)) {
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

      folderContentScaleFactor = (1 /
          (1 -
              ((0.8 - fitScreenZoomFactor) *
                  (_animRevealContent.value / 0.8))));
    } else {
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
      {double perspectiveAngle = folderTransformPerspectiveAngle,
      double zoomFactor = folderTransformZoomFactor,
      double rotationX = folderTransformRotationX,
      double rotationY = folderTransformRotationY,
      double rotationZ = folderTransformRotationZ,
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
    double minContentHeight = folderBackProportions.minWidth;
    double maxContentHeight =
        (MediaQuery.of(context).size.height * 210 / 297) - fitScreenZoomFactor;
    double contentHeightDiffRatio = (maxContentHeight / minContentHeight);

    if (Utils.isPhoneScreen(context)) {
      beginAnimRevealContent = 1.0;
      endAnimRevealContent = -0.2;

      _animRevealContent = TweenSequence(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween(
                begin: beginAnimRevealContent, end: beginAnimRevealContent),
            weight: 250 / 3,
          ),
          TweenSequenceItem<double>(
            tween:
                Tween(begin: beginAnimRevealContent, end: endAnimRevealContent),
            weight: 50 / 3,
          ),
        ],
      ).animate(CurvedAnimation(
          parent: _controllerRevealContent,
          curve: Curves.easeInOutCubicEmphasized))
        ..addListener(() {
          setState(() {});
        })
        ..addStatusListener((status) {
          _status = status;
        });

      folderContentScaleFactor =
          0.75 + (_animRevealContent.value * contentHeightDiffRatio);

      folderContentTranslationY = -(contentHeightDiffRatio / 2) *
          folderBackProportions.maxHeight *
          folderContentScaleFactor;
    } else if (Utils.isFoldable(context)) {
      beginAnimRevealContent = 0.25;
      endAnimRevealContent = -0.18;

      _animRevealContent = TweenSequence(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween(
                begin: beginAnimRevealContent, end: beginAnimRevealContent),
            weight: 250 / 3,
          ),
          TweenSequenceItem<double>(
            tween:
                Tween(begin: beginAnimRevealContent, end: endAnimRevealContent),
            weight: 50 / 3,
          ),
        ],
      ).animate(CurvedAnimation(
          parent: _controllerRevealContent,
          curve: Curves.easeInOutCubicEmphasized))
        ..addListener(() {
          setState(() {});
        })
        ..addStatusListener((status) {
          _status = status;
        });

      folderContentScaleFactor =
          0.85 + (_animRevealContent.value * contentHeightDiffRatio);

      folderContentTranslationY =
          -0.5 * folderBackProportions.maxHeight * folderContentScaleFactor;
    } else if (Utils.isTabletScreen(context)) {
      beginAnimRevealContent = 0.25;
      endAnimRevealContent = -0.18;

      _animRevealContent = TweenSequence(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween(
                begin: beginAnimRevealContent, end: beginAnimRevealContent),
            weight: 250 / 3,
          ),
          TweenSequenceItem<double>(
            tween:
                Tween(begin: beginAnimRevealContent, end: endAnimRevealContent),
            weight: 50 / 3,
          ),
        ],
      ).animate(CurvedAnimation(
          parent: _controllerRevealContent,
          curve: Curves.easeInOutCubicEmphasized))
        ..addListener(() {
          setState(() {});
        })
        ..addStatusListener((status) {
          _status = status;
        });

      folderContentScaleFactor =
          (fitScreenZoomFactor - _animRevealContent.value) +
              (_animRevealContent.value / heightToParentRatio);

      folderContentScaleFactor = 0.75 +
          (_animRevealContent.value *
              (MediaQuery.of(context).size.height /
                  folderBackProportions.minHeight));

      folderContentTranslationY =
          -0.4 * folderBackProportions.maxHeight * folderContentScaleFactor;
    } else {
      beginAnimRevealContent = 0.25;
      endAnimRevealContent = -0.18;

      _animRevealContent = TweenSequence(
        <TweenSequenceItem<double>>[
          TweenSequenceItem<double>(
            tween: Tween(
                begin: beginAnimRevealContent, end: beginAnimRevealContent),
            weight: 250 / 3,
          ),
          TweenSequenceItem<double>(
            tween:
                Tween(begin: beginAnimRevealContent, end: endAnimRevealContent),
            weight: 50 / 3,
          ),
        ],
      ).animate(CurvedAnimation(
          parent: _controllerRevealContent,
          curve: Curves.easeInOutCubicEmphasized))
        ..addListener(() {
          setState(() {});
        })
        ..addStatusListener((status) {
          _status = status;
        });

      folderContentScaleFactor =
          (fitScreenZoomFactor - _animRevealContent.value) +
              (_animRevealContent.value / heightToParentRatio);

      folderContentScaleFactor = 0.85 +
          (_animRevealContent.value *
              (MediaQuery.of(context).size.height /
                  folderBackProportions.minHeight));

      folderContentTranslationY =
          -0.35 * folderBackProportions.maxHeight * folderContentScaleFactor;
    }

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
            color: ColorChart.folderBackBoxShadowColor,
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

    Transform folderCoverForeground = Transform(
        alignment: FractionalOffset.center,
        origin: folderCoverTransformOrigin,
        transform: Matrix4.identity()
          //..setEntry(3, 2, folderCoverPerspective)
          ..rotateX(pi * min(_animOpenFolder.value, 0.5)),
        child: Container(
          decoration: BoxDecoration(
            color: widget.folderMainColor,
            border: Border.all(color: _folderBorderColor),
            borderRadius:
                BorderRadius.all(Radius.circular(folderCoverCornerRadius)),
            boxShadow: [
              BoxShadow(
                color: ColorChart.folderCoverBoxShadowColor,
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

    Transform folderCoverBackground = Transform(
        alignment: FractionalOffset.center,
        origin: folderCoverTransformOrigin,
        transform: Matrix4.identity()
          //..setEntry(3, 2, folderCoverPerspective)
          ..rotateX(pi * max(0.5, _animOpenFolder.value)),
        child: Container(
          decoration: BoxDecoration(
            color: widget.folderMainColor,
            border: Border.all(color: _folderBorderColor),
            borderRadius:
                BorderRadius.all(Radius.circular(folderCoverCornerRadius)),
            boxShadow: [
              BoxShadow(
                color: ColorChart.folderCoverBoxShadowColor,
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

    return GestureDetector(
        onTap: () {
          if (_status == AnimationStatus.dismissed) {
            _controllerOpenFolder.forward();
            _controllerRevealContent.forward();
          } else {
            _controllerOpenFolder.reverse();
            _controllerRevealContent.reverse();
          }
        },
        child: buildFolderTransform(
            zoomFactor: 6.0 * fitScreenZoomFactor,
            rotationX: 0,
            rotationY: 0,
            rotationZ: 0,
            child: Stack(fit: StackFit.passthrough, children: [
              /* Conteneur extérieur */
              Transform(
                  alignment: FractionalOffset.center,
                  origin: folderBackTransformOrigin,
                  transform: Matrix4.identity()
                    ..setEntry(
                        3, 2, 0.0005 * heightToParentRatio) // Inclinaison
                    ..rotateX(pi *
                        -_animOpenFolder.value /
                        (12 + (parentDimensionRatio + heightToParentRatio))),
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
                        children: [folderCoverBackground])
                  ]),
              Transform(
                  alignment: FractionalOffset.center,
                  origin: Offset.zero,
                  transform: Matrix4.identity()
                    ..setEntry(1, 3, folderContentTranslationY)
                    ..setEntry(3, 3, folderContentScaleFactor)
                    ..rotateZ(8.5 * pi * _animRotateContent.value),
                  child: widget.folderContent),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [folderCoverForeground])
                  ])
            ])));
  }
}
