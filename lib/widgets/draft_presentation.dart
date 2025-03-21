import 'dart:math';
import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/utils.dart' show OS, Utils;
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart' show SemanticsProperties;
import 'package:web/web.dart' as html show window;

import '../helpers/constants.dart';
import '../helpers/globals.dart' show ToolbarMenu, appLanguage;
import 'squared_sheet.dart';

class DraftPresentation extends StatefulWidget {
  static const double defaultScaleFactor = 40.0;
  final int bubbleShadowOpacity;

  const DraftPresentation({this.bubbleShadowOpacity = 0, super.key});

  @override
  State<DraftPresentation> createState() => _DraftPresentationState();
}

class _DraftPresentationState extends State<DraftPresentation> {
  late double scaleFactor, pinchScaleRatio = 0.0;
  ScaleUpdateDetails prevScaleUpdateDetails = ScaleUpdateDetails();

  ValueNotifier<double> pinchRotationAngle = ValueNotifier<double>(0.0);

  @override
  void initState() {
    super.initState();
    scaleFactor = DraftPresentation.defaultScaleFactor;

    pinchRotationAngle.addListener(() => setState(() {}));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => {});
  }

  List<Widget> buildContent(
      BoxConstraints containerConstraints, bool isSmallScreen) {
    double contentScaleFactor = (containerConstraints.maxHeight / 1994) * 1.5;

    Offset vitruveOffset = Offset(100, -100);
    Offset audioDescriptionLogoOffset = Offset(600, 50);
    Offset audioDescriptionIncentiveOffset = Offset(450, 75);
    Offset pretextOffset = Offset(75, -25);
    Offset mangaCrowOffset = Offset(425, -50);
    Offset callToActionOffset = Offset(350, -25);
    Offset resumeLinkOffset = Offset(100, -25);
    Offset resumeArrowOffset = Offset(300, -175);
    Offset outcryOffset = Offset(200, -125);

    if (isSmallScreen) {
      vitruveOffset = Offset(125, 0);
      audioDescriptionLogoOffset = Offset(600, 160);
      audioDescriptionIncentiveOffset = Offset(450, 150);
      pretextOffset = Offset(75, 25);
      mangaCrowOffset = Offset(425, -50);
      callToActionOffset = Offset(350, -25);
      resumeLinkOffset = Offset(100, -25);
      resumeArrowOffset = Offset(300, -175);
      outcryOffset = Offset(200, -125);
    }

    Semantics vitruve = Semantics.fromProperties(
        properties: SemanticsProperties(
            enabled: true,
            focusable: true,
            button: false,
            tooltip: SemanticsStrings.GUIDED_TOUR_3[appLanguage.value]),
        child: ExcludeSemantics(
            excluding: true,
            child: Transform(
                alignment: FractionalOffset.center,
                origin: Offset.zero,
                transform: Matrix4.identity()
                  ..rotateZ(-0.15 * pi)
                  // Translate X
                  ..setEntry(0, 3, vitruveOffset.dx * contentScaleFactor)
                  // Translate Y
                  ..setEntry(1, 3, vitruveOffset.dy * contentScaleFactor),
                child: Image(
                    height: 150 * contentScaleFactor,
                    image: AssetImage(
                        "lib/assets/resume_presentation/vitruve.png")))));

    Semantics audioDescriptionLogo = Semantics.fromProperties(
        properties: SemanticsProperties(
            enabled: true,
            focusable: true,
            button: false,
            tooltip: SemanticsStrings.GUIDED_TOUR_1[appLanguage.value]),
        child: ExcludeSemantics(
            excluding: true,
            child: Transform(
                alignment: FractionalOffset.center,
                origin: Offset.zero,
                transform: Matrix4.identity()
                  // Translate X
                  ..setEntry(
                      0, 3, audioDescriptionLogoOffset.dx * contentScaleFactor)
                  // Translate Y
                  ..setEntry(
                      1, 3, audioDescriptionLogoOffset.dy * contentScaleFactor)
                  ..rotateZ(pi * 0.0573),
                child: Image(
                    height: 100 * contentScaleFactor,
                    image: AssetImage(
                        "lib/assets/resume_presentation/audio_description.png")))));

    Semantics audioDescriptionIncentive = Semantics.fromProperties(
        properties: SemanticsProperties(
            enabled: true,
            focusable: true,
            button: false,
            tooltip: SemanticsStrings.GUIDED_TOUR_2[appLanguage.value]),
        child: ExcludeSemantics(
            excluding: true,
            child: Transform(
                alignment: FractionalOffset.center,
                origin: Offset.zero,
                transform: Matrix4.identity()
                  // Translate X
                  ..setEntry(0, 3,
                      audioDescriptionIncentiveOffset.dx * contentScaleFactor)
                  // Translate Y
                  ..setEntry(1, 3,
                      audioDescriptionIncentiveOffset.dy * contentScaleFactor)
                  ..rotateZ(pi * 0.0973),
                child: Text(
                    AppStrings.RESUME_PRESENTATION_AUDIO_DESCRIPTION[
                        appLanguage.value]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 50.0 * contentScaleFactor,
                        fontFamily: "GrapeNuts",
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(200, 40, 37, 97),
                        decoration: TextDecoration.none)))));

    Semantics pretext = Semantics.fromProperties(
        properties: SemanticsProperties(
            enabled: true,
            focusable: true,
            button: false,
            tooltip: SemanticsStrings.GUIDED_TOUR_4[appLanguage.value]),
        child: ExcludeSemantics(
            excluding: true,
            child: Transform(
                alignment: FractionalOffset.center,
                origin: Offset.zero,
                transform: Matrix4.identity()
                  // Translate X
                  ..setEntry(0, 3, pretextOffset.dx * contentScaleFactor)
                  // Translate Y
                  ..setEntry(1, 3, pretextOffset.dy * contentScaleFactor)
                  ..rotateZ(pi * -0.0773),
                child: Text(
                    AppStrings.RESUME_PRESENTATION_PRETEXT[appLanguage.value]!,
                    strutStyle: StrutStyle.disabled,
                    textHeightBehavior: TextHeightBehavior(
                        leadingDistribution: TextLeadingDistribution.even,
                        applyHeightToFirstAscent: true,
                        applyHeightToLastDescent: false),
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        leadingDistribution: TextLeadingDistribution.even,
                        textBaseline: TextBaseline.alphabetic,
                        fontSize: 50.0 * contentScaleFactor,
                        fontFamily: "Mynerve",
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(207, 29, 114, 241))))));

    Semantics mangaCrow = Semantics.fromProperties(
        properties: SemanticsProperties(
            enabled: true,
            focusable: true,
            button: false,
            tooltip: SemanticsStrings.GUIDED_TOUR_5[appLanguage.value]),
        child: ExcludeSemantics(
            excluding: true,
            child: Transform(
                alignment: FractionalOffset.center,
                origin: Offset.zero,
                transform: Matrix4.identity()
                  // Translate X
                  ..setEntry(0, 3, mangaCrowOffset.dx * contentScaleFactor)
                  // Translate Y
                  ..setEntry(1, 3, mangaCrowOffset.dy * contentScaleFactor),
                child: Stack(children: [
                  Image(
                      width: 350 * contentScaleFactor,
                      image: AssetImage(
                          "lib/assets/resume_presentation/blue_manga_crow/body_flapping.gif")),
                  Image(
                      width: 350 * contentScaleFactor,
                      image: AssetImage(
                          "lib/assets/resume_presentation/blue_manga_crow/beak_tweeting.gif")),
                  Image(
                      width: 350 * contentScaleFactor,
                      image: AssetImage(
                          "lib/assets/resume_presentation/blue_manga_crow/eye_rolling.gif")),
                  Image(
                      width: 350 * contentScaleFactor,
                      image: AssetImage(
                          "lib/assets/resume_presentation/blue_manga_crow/legs_spreading.gif"))
                ]))));

    Semantics callToAction = Semantics.fromProperties(
        properties:
            SemanticsProperties(enabled: true, focusable: false, button: false),
        child: ExcludeSemantics(
            excluding: true,
            child: Transform(
                alignment: FractionalOffset.center,
                origin: Offset.zero,
                transform: Matrix4.identity()
                  // Translate X
                  ..setEntry(0, 3, callToActionOffset.dx * contentScaleFactor)
                  // Translate Y
                  ..setEntry(1, 3, callToActionOffset.dy * contentScaleFactor)
                  ..rotateZ(pi * 0.1),
                child: Text(
                    AppStrings
                        .RESUME_PRESENTATION_CALL_TO_ACTION[appLanguage.value]!,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 40.0 * contentScaleFactor,
                        fontFamily: "RockSalt",
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(226, 219, 51, 21))))));

    Transform resumeLink = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, resumeLinkOffset.dx * contentScaleFactor)
          // Translate Y
          ..setEntry(1, 3, resumeLinkOffset.dy * contentScaleFactor),
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
                onTap: () {
                  String filePath = appLanguage.value == 'en'
                      ? "./lib/assets/files/Resume_2025.pdf"
                      : "./lib/assets/files/CV_2025.pdf";
                  html.window.open(filePath, '_blank');
                },
                child: Semantics.fromProperties(
                    properties: SemanticsProperties(
                        enabled: true,
                        focusable: false,
                        button: true,
                        label: SemanticsStrings
                            .DOWNLOAD_BUTTON[appLanguage.value]),
                    child: Container(
                        height: 150 * contentScaleFactor,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(200 * contentScaleFactor)),
                        ),
                        child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                                "lib/assets/files/download_button.png")))))));

    Semantics resumeArrow = Semantics.fromProperties(
        properties:
            SemanticsProperties(enabled: true, focusable: false, button: false),
        child: ExcludeSemantics(
            excluding: true,
            child: Transform(
                alignment: FractionalOffset.center,
                origin: Offset.zero,
                transform: Matrix4.identity()
                  // Translate X
                  ..setEntry(0, 3, resumeArrowOffset.dx * contentScaleFactor)
                  // Translate Y
                  ..setEntry(1, 3, resumeArrowOffset.dy * contentScaleFactor),
                child: Image(
                    width: 200 * contentScaleFactor,
                    color: const Color.fromARGB(226, 219, 51, 21),
                    image: AssetImage(
                        "lib/assets/resume_presentation/neon_${appLanguage.value}.png")))));

    Semantics outcry = Semantics.fromProperties(
        properties: SemanticsProperties(
            enabled: true,
            focusable: false,
            button: false,
            label: SemanticsStrings.SOCIALMEDIA_SEGUE[appLanguage.value]),
        child: Transform(
            alignment: FractionalOffset.center,
            origin: Offset.zero,
            transform: Matrix4.identity()
              // Translate X
              ..setEntry(0, 3, outcryOffset.dx * contentScaleFactor)
              // Translate Y
              ..setEntry(1, 3, outcryOffset.dy * contentScaleFactor),
            child: ExcludeSemantics(
                excluding: true,
                child: Text(
                    AppStrings.RESUME_PRESENTATION_OUTCRY[appLanguage.value]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0 * contentScaleFactor,
                        fontFamily: "OvertheRainbow",
                        color: Colors.green,
                        decoration: TextDecoration.none,
                        decorationStyle: TextDecorationStyle.double,
                        decorationColor:
                            const Color.fromARGB(225, 44, 138, 0))))));

    return [
      audioDescriptionLogo,
      audioDescriptionIncentive,
      vitruve,
      pretext,
      mangaCrow,
      callToAction,
      resumeLink,
      resumeArrow,
      outcry,
    ];
  }

  @override
  Widget build(BuildContext context) {
    DraftPresentation that = widget;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraintsPage) {
      OS runningOS = Utils.getOS(context);
      bool isMobileDevice = Utils.isSmallScreen(context) &&
          (runningOS == OS.iOS || runningOS == OS.Android);

      double rescaleBasis = isMobileDevice ? 2.5 : 2.25;
      double rotationFactor = isMobileDevice ? -.015 * pi : -.05 * pi;
      scaleFactor = (constraintsPage.maxHeight / (1994 * (1 - sin(.05 * pi))));

      return Semantics.fromProperties(
          properties: SemanticsProperties(
            readOnly: true,
            button: false,
            enabled: true,
            focusable: false,
          ),
          child: GestureDetector(
              onScaleUpdate: (ScaleUpdateDetails details) {
                if (details.pointerCount > 1) {
                  double diffScale =
                      prevScaleUpdateDetails.scale - details.scale;
                  double diffRotation =
                      prevScaleUpdateDetails.rotation - details.rotation;
                  pinchScaleRatio =
                      (pinchScaleRatio + diffScale).clamp(-0.5, 0.5);
                  pinchRotationAngle.value += diffRotation;
                }
                prevScaleUpdateDetails = details;
              },
              onTap: () {
                globalStreams.triggerStackSocialMediaButtons(true);
                globalStreams.triggerBubbleCarousel(ToolbarMenu.none);
                globalStreams.triggerToggleAppBar(false);
              },
              child: Opacity(
                  opacity: (255 - that.bubbleShadowOpacity) / 255,
                  child: Transform(
                      alignment: FractionalOffset.center,
                      origin: Offset.zero,
                      transform: Matrix4.identity()
                        // Scale
                        ..setEntry(3, 3,
                            (rescaleBasis * scaleFactor) + (pinchScaleRatio))
                        // Translate Y
                        ..setEntry(1, 3, -100 * scaleFactor)
                        ..rotateZ(rotationFactor - pinchRotationAngle.value),
                      child: SquaredSheet(
                          scaleFactor: DraftPresentation.defaultScaleFactor *
                              scaleFactor,
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraintsSheet) {
                            return Row(children: [
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: buildContent(
                                      constraintsSheet, isMobileDevice))
                            ]);
                          }))))));
    });
  }
}
