import 'dart:math';
import 'package:dossier_de_competences_web/helpers/utils.dart' show Utils;
import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import '../helpers/globals.dart' show appLanguage;
import 'squared_sheet.dart';

class DraftPresentation extends StatefulWidget {
  static const double defaultScaleFactor = 40.0;
  final double animatedScaleFactor;

  const DraftPresentation(
      {this.animatedScaleFactor = defaultScaleFactor, super.key});

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
    double contentScaleFactor = (containerConstraints.maxHeight / 1994) * 1.6;

    Transform vitruve = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          ..rotateZ(pi * 1.6273)
          // Translate X
          ..setEntry(0, 3, 150 * contentScaleFactor)
          // Translate Y
          ..setEntry(1, 3, 50 * contentScaleFactor)
          // Scale
          ..setEntry(0, 0, 4 * contentScaleFactor)
          ..setEntry(1, 1, 4 * contentScaleFactor),
        child: Image(
            height: 100 * contentScaleFactor,
            image: AssetImage("lib/assets/resume_presentation/vitruve.png")));

    Transform naughty = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 700 * contentScaleFactor)
          // Translate Y
          ..setEntry(1, 3, 100 * contentScaleFactor)
          // Scale
          ..setEntry(0, 0, 45 * contentScaleFactor)
          ..setEntry(1, 1, 45 * contentScaleFactor),
        child: Image(
            height: 5 * contentScaleFactor,
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
                ..setEntry(1, 3, 150 * contentScaleFactor)
                ..rotateZ(pi * 0.0973),
              child: Text(AppStrings.RESUME_PRESENTATION_BOREDOM[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50.0 * contentScaleFactor,
                      fontFamily: "GrapeNuts",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(127, 0, 0, 0))));
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
                ..setEntry(1, 3, 150 * contentScaleFactor)
                ..rotateZ(pi * -0.0773),
              child: Text(AppStrings.RESUME_PRESENTATION_PRETEXT[language]!,
                  strutStyle: StrutStyle.disabled,
                  textHeightBehavior: TextHeightBehavior(
                      leadingDistribution: TextLeadingDistribution.even,
                      applyHeightToFirstAscent: true,
                      applyHeightToLastDescent: false),
                  style: TextStyle(
                      leadingDistribution: TextLeadingDistribution.even,
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 60.0 * contentScaleFactor,
                      fontFamily: "Mynerve",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(207, 29, 114, 241))));
        });

    Transform mangaCrow = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 550 * contentScaleFactor)
          // Translate Y
          ..setEntry(1, 3, 100 * contentScaleFactor)
          // Scale
          ..setEntry(0, 0, 2.5 * contentScaleFactor)
          ..setEntry(1, 1, 2.5 * contentScaleFactor),
        child: Image(
            width: 200 * contentScaleFactor,
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
                ..setEntry(0, 3, 125 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, 150 * contentScaleFactor)
                ..rotateZ(pi * -0.0373),
              child: Text(
                  AppStrings.RESUME_PRESENTATION_CALL_TO_ACTION[language]!,
                  style: TextStyle(
                      fontSize: 40.0 * contentScaleFactor,
                      fontFamily: "RockSalt",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(226, 219, 51, 21))));
        });

    ValueListenableBuilder outcry = ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 225 * contentScaleFactor)
                // Translate Y
                ..setEntry(1, 3, 325 * contentScaleFactor),
              child: Text(AppStrings.RESUME_PRESENTATION_OUTCRY[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60.0 * contentScaleFactor,
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
      outcry,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraintsPage) {
      bool isFoldable = Utils.isFoldable(context);
      double rescaleBasis = isFoldable ? 2.5 : 2.25;
      double rotationFactor = isFoldable ? -.015 * pi : -.05 * pi;
      scaleFactor = (constraintsPage.maxHeight / (1994 * (1 - sin(.05 * pi))));

      return Transform(
          alignment: FractionalOffset.center,
          origin: Offset.zero,
          transform: Matrix4.identity()
            // Scale
            ..setEntry(3, 3, rescaleBasis * scaleFactor)
            // Translate Y
            ..setEntry(1, 3, -100 * scaleFactor)
            ..rotateZ(rotationFactor),
          child: SquaredSheet(
              scaleFactor: DraftPresentation.defaultScaleFactor * scaleFactor,
              child: LayoutBuilder(builder:
                  (BuildContext context, BoxConstraints constraintsSheet) {
                return Row(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: buildContent(constraintsSheet))
                ]);
              })));
    });
  }
}
