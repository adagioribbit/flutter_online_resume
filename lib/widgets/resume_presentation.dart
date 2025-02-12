import 'dart:math';

import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;
import 'squared_sheet.dart';

class ResumePresentation extends StatefulWidget {
  const ResumePresentation({super.key});

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
    ValueListenableBuilder boredom = ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, 180)
                // Translate Y
                ..setEntry(1, 3, -50)
                ..rotateZ(pi * 0.0973),
              child: Text(AppStrings.RESUME_PRESENTATION_BOREDOM[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0,
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
                ..setEntry(0, 3, -80)
                // Translate Y
                ..setEntry(1, 3, 20)
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
                      fontSize: 40.0,
                      fontFamily: "Mynerve",
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(207, 29, 114, 241))));
        });

    ValueListenableBuilder callToAction = ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, language, widget) {
          return Transform(
              alignment: FractionalOffset.center,
              origin: Offset.zero,
              transform: Matrix4.identity()
                // Translate X
                ..setEntry(0, 3, -80)
                // Translate Y
                ..setEntry(1, 3, 80)
                ..rotateZ(pi * -0.0373),
              child: Text(
                  AppStrings.RESUME_PRESENTATION_CALL_TO_ACTION[language]!,
                  style: TextStyle(
                      fontSize: 40.0,
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
                ..setEntry(0, 3, 80)
                // Translate Y
                ..setEntry(1, 3, 290),
              child: Text(AppStrings.RESUME_PRESENTATION_OUTCRY[language]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      fontFamily: "OvertheRainbow",
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                      decorationColor: const Color.fromARGB(225, 44, 138, 0))));
        });

    return SquaredSheet(
        scaleFactor: 30.0,
        child: SizedBox.expand(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          boredom,
          pretext,
          callToAction,
          outcry,
        ])));
  }
}
