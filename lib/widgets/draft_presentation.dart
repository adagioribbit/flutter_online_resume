import 'dart:math';
import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/utils.dart' show OS, Utils;
import 'package:flutter/material.dart';
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
  late double scaleFactor;
  @override
  void initState() {
    super.initState();
    scaleFactor = DraftPresentation.defaultScaleFactor;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => {});
  }

  List<Widget> buildContent(BoxConstraints containerConstraints) {
    double contentScaleFactor = (containerConstraints.maxHeight / 1994) * 1.5;

    Transform vitruve = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          ..rotateZ(-0.15 * pi)
          // Translate X
          ..setEntry(0, 3, 100 * contentScaleFactor)
          // Translate Y
          ..setEntry(1, 3, -100 * contentScaleFactor),
        child: Image(
            height: 150 * contentScaleFactor,
            image: AssetImage("lib/assets/resume_presentation/vitruve.png")));

    Transform naughty = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 650 * contentScaleFactor)
          // Translate Y
          ..setEntry(1, 3, 100 * contentScaleFactor),
        child: Image(
            height: 100 * contentScaleFactor,
            image: AssetImage("lib/assets/resume_presentation/naughty.png")));

    ValueListenableBuilder boredom = ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 350 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, 50 * contentScaleFactor)
                ..rotateZ(pi * 0.0973),
              child: Text(AppStrings.RESUME_PRESENTATION_BOREDOM[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50.0 * contentScaleFactor,
                      fontFamily: "GrapeNuts",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(127, 0, 0, 0),
                      decoration: TextDecoration.none)));
        });

    ValueListenableBuilder pretext = ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 75 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, -25 * contentScaleFactor)
                ..rotateZ(pi * -0.0773),
              child: Text(AppStrings.RESUME_PRESENTATION_PRETEXT[language]!,
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
                      color: const Color.fromARGB(207, 29, 114, 241))));
        });

    Transform mangaCrow = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 525 * contentScaleFactor)
          // Translate Y
          ..setEntry(1, 3, -50 * contentScaleFactor),
        child: Image(
            width: 250 * contentScaleFactor,
            image: AssetImage(
                "lib/assets/resume_presentation/blue_manga_crow.png")));

    ValueListenableBuilder callToAction = ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 350 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, -25 * contentScaleFactor)
                ..rotateZ(pi * 0.1),
              child: Text(
                  AppStrings.RESUME_PRESENTATION_CALL_TO_ACTION[language]!,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 40.0 * contentScaleFactor,
                      fontFamily: "RockSalt",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(226, 219, 51, 21))));
        });

    ValueListenableBuilder resumeLink = ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 100 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, -25 * contentScaleFactor),
              child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                      onTap: () {
                        String filePath = language == 'en'
                            ? "./lib/assets/files/Resume_2025.pdf"
                            : "./lib/assets/files/CV_2025.pdf";
                        html.window.open(filePath, '_blank');
                      },
                      child: Container(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              40 * contentScaleFactor,
                              0,
                              40 * contentScaleFactor),
                          height: 175 * contentScaleFactor,
                          width: 175 * contentScaleFactor,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(88, 219, 51, 21),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                              BoxShadow(
                                color: const Color.fromARGB(226, 219, 51, 21),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -5,
                                blurRadius: 5,
                              ),
                            ],
                            border: Border(
                                left: BorderSide(
                                    color:
                                        const Color.fromARGB(226, 219, 51, 21)),
                                top: BorderSide(
                                    color: const Color.fromARGB(
                                        226, 219, 51, 21))),
                            borderRadius: BorderRadius.all(
                                Radius.circular(200 * contentScaleFactor)),
                          ),
                          child: Image(
                              image: AssetImage(
                                  "lib/assets/files/download_pdf.png"))))));
        });

    ValueListenableBuilder resumeArrow = ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 300 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, -175 * contentScaleFactor),
              child: Image(
                  width: 200 * contentScaleFactor,
                  color: const Color.fromARGB(226, 219, 51, 21),
                  image: AssetImage(
                      "lib/assets/resume_presentation/neon_$language.png")));
        });

    ValueListenableBuilder outcry = ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 500 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, -125 * contentScaleFactor),
              child: Text(AppStrings.RESUME_PRESENTATION_OUTCRY[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0 * contentScaleFactor,
                      fontFamily: "OvertheRainbow",
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                      decorationColor: const Color.fromARGB(225, 44, 138, 0))));
        });

    return [
      naughty,
      boredom,
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
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraintsPage) {
      OS runningOS = Utils.getOS(context);
      bool isMobileDevice =
          (Utils.isPhoneScreen(context) || Utils.isFoldable(context)) &&
              (runningOS == OS.iOS || runningOS == OS.Android);

      double rescaleBasis = isMobileDevice ? 2.5 : 2.25;
      double rotationFactor = isMobileDevice ? -.015 * pi : -.05 * pi;
      scaleFactor = (constraintsPage.maxHeight / (1994 * (1 - sin(.05 * pi))));

      return GestureDetector(
          onTap: () {
            globalStreams.triggerBubbleCarousel(ToolbarMenu.None);
            globalStreams.triggerToggleAppBar(false);
          },
          child: Opacity(
              opacity: (255 - widget.bubbleShadowOpacity) / 255,
              child: Transform(
                  alignment: FractionalOffset.center,
                  origin: Offset.zero,
                  transform: Matrix4.identity()
                    // Scale
                    ..setEntry(3, 3, rescaleBasis * scaleFactor)
                    // Translate Y
                    ..setEntry(1, 3, -100 * scaleFactor)
                    ..rotateZ(rotationFactor),
                  child: SquaredSheet(
                      scaleFactor:
                          DraftPresentation.defaultScaleFactor * scaleFactor,
                      child: LayoutBuilder(builder: (BuildContext context,
                          BoxConstraints constraintsSheet) {
                        return Row(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: buildContent(constraintsSheet))
                        ]);
                      })))));
    });
  }
}
