import 'dart:math';

import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;
import 'squared_sheet.dart';

class ResumePresentation extends StatefulWidget {
  static const double defaultScaleFactor = 30.0;
  final double animatedScaleFactor;

  const ResumePresentation(
      {this.animatedScaleFactor = defaultScaleFactor, super.key});

  @override
  State<ResumePresentation> createState() => _ResumePresentationState();
}

class _ResumePresentationState extends State<ResumePresentation>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    double scaleFactorRatio =
        (widget.animatedScaleFactor / ResumePresentation.defaultScaleFactor)
            .clamp(0.0, 0.9);

    Transform vitruve = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          ..rotateZ(pi * 1.6273)
          // Translate X
          ..setEntry(0, 3, -1 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, -50 * scaleFactorRatio)
          // Scale
          ..setEntry(0, 0, 16)
          ..setEntry(1, 1, 16),
        child: Image(
            height: 10 * scaleFactorRatio,
            image: AssetImage("lib/assets/vitruve.png")));

    Transform naughty = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 450 * scaleFactorRatio)
          // Scale
          ..setEntry(0, 0, 16)
          ..setEntry(1, 1, 16),
        child: Image(
            height: 5 * scaleFactorRatio,
            image: AssetImage("lib/assets/naughty.png")));

    ValueListenableBuilder boredom = ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 150 * scaleFactorRatio)
                // Translate Y
                ..setEntry(1, 3, -50 * scaleFactorRatio)
                ..rotateZ(pi * 0.0973),
              child: Text(AppStrings.RESUME_PRESENTATION_BOREDOM[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0 * scaleFactorRatio,
                      fontFamily: "GrapeNuts",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(127, 0, 0, 0))));
        });

    ValueListenableBuilder pretext = ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, -80 * scaleFactorRatio)
                // Translate Y
                ..setEntry(1, 3, 20 * scaleFactorRatio)
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
                      fontSize: 40.0 * scaleFactorRatio,
                      fontFamily: "Mynerve",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(207, 29, 114, 241))));
        });

    Transform mangaCrow = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 300 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, -40 * scaleFactorRatio),
        child: Image(
            width: 200 * scaleFactorRatio,
            image: AssetImage("lib/assets/blue_manga_crow.png")));

    ValueListenableBuilder callToAction = ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, -80 * scaleFactorRatio)
                // Translate Y
                ..setEntry(1, 3, -20 * scaleFactorRatio)
                ..rotateZ(pi * -0.0373),
              child: Text(
                  AppStrings.RESUME_PRESENTATION_CALL_TO_ACTION[language]!,
                  style: TextStyle(
                      fontSize: 40.0 * scaleFactorRatio,
                      fontFamily: "RockSalt",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(226, 219, 51, 21))));
        });

    ValueListenableBuilder outcry = ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 80 * scaleFactorRatio)
                // Translate Y
                ..setEntry(1, 3, 125 * scaleFactorRatio),
              child: Text(AppStrings.RESUME_PRESENTATION_OUTCRY[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0 * scaleFactorRatio,
                      fontFamily: "OvertheRainbow",
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                      decorationColor: const Color.fromARGB(225, 44, 138, 0))));
        });

    return SquaredSheet(
        scaleFactor: widget.animatedScaleFactor,
        child: SizedBox.expand(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          naughty,
          boredom,
          vitruve,
          pretext,
          mangaCrow,
          callToAction,
          outcry,
        ])));
  }
}
