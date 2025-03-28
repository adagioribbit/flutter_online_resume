import 'dart:math';
import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import '../helpers/globals.dart' show appLanguage;
import 'squared_sheet.dart';

class ResumePresentation extends StatefulWidget {
  static const double defaultScaleFactor = 40.0;
  final double animatedScaleFactor;

  const ResumePresentation(
      {this.animatedScaleFactor = defaultScaleFactor, super.key});

  @override
  State<ResumePresentation> createState() => _ResumePresentationState();
}

class _ResumePresentationState extends State<ResumePresentation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => {});
  }

  List<Widget> buildContent(
      double scaleFactorRatio, BoxConstraints containerConstraints) {
    Transform vitruve = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          ..rotateZ(pi * 1.6273)
          // Translate X
          ..setEntry(0, 3, 150 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, 50 * scaleFactorRatio)
          // Scale
          ..setEntry(0, 0, 4 * scaleFactorRatio)
          ..setEntry(1, 1, 4 * scaleFactorRatio),
        child: Image(
            height: 100 * scaleFactorRatio,
            image: AssetImage("lib/assets/toolbar/vitruve.png")));

    Transform naughty = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 700 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, 100 * scaleFactorRatio)
          // Scale
          ..setEntry(0, 0, 45 * scaleFactorRatio)
          ..setEntry(1, 1, 45 * scaleFactorRatio),
        child: Image(
            height: 5 * scaleFactorRatio,
            image: AssetImage("lib/assets/toolbar/naughty.png")));

    Transform boredom = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 350 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, 150 * scaleFactorRatio)
          ..rotateZ(pi * 0.0973),
        child: Text(
            AppStrings
                .RESUME_PRESENTATION_AUDIO_DESCRIPTION[appLanguage.value]!,
            textAlign: TextAlign.center,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 50.0 * scaleFactorRatio,
                fontFamily: "GrapeNuts",
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(127, 0, 0, 0))));

    Transform pretext = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 75 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, 150 * scaleFactorRatio)
          ..rotateZ(pi * -0.0773),
        child: Text(AppStrings.RESUME_PRESENTATION_PRETEXT[appLanguage.value]!,
            strutStyle: StrutStyle.disabled,
            textHeightBehavior: TextHeightBehavior(
                leadingDistribution: TextLeadingDistribution.even,
                applyHeightToFirstAscent: true,
                applyHeightToLastDescent: false),
            style: TextStyle(
                decoration: TextDecoration.none,
                leadingDistribution: TextLeadingDistribution.even,
                textBaseline: TextBaseline.alphabetic,
                fontSize: 60.0 * scaleFactorRatio,
                fontFamily: "Mynerve",
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(207, 29, 114, 241))));

    Transform mangaCrow = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 550 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, 100 * scaleFactorRatio)
          // Scale
          ..setEntry(0, 0, 2.5 * scaleFactorRatio)
          ..setEntry(1, 1, 2.5 * scaleFactorRatio),
        child: Image(
            width: 200 * scaleFactorRatio,
            image: AssetImage("lib/assets/toolbar/blue_manga_crow.png")));

    Transform callToAction = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 125 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, 150 * scaleFactorRatio)
          ..rotateZ(pi * -0.0373),
        child: Text(
            AppStrings.RESUME_PRESENTATION_CALL_TO_ACTION[appLanguage.value]!,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 40.0 * scaleFactorRatio,
                fontFamily: "RockSalt",
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(226, 219, 51, 21))));

    Transform outcry = Transform(
        alignment: FractionalOffset.center,
        origin: Offset.zero,
        transform: Matrix4.identity()
          // Translate X
          ..setEntry(0, 3, 225 * scaleFactorRatio)
          // Translate Y
          ..setEntry(1, 3, 325 * scaleFactorRatio),
        child: Text(AppStrings.RESUME_PRESENTATION_OUTCRY[appLanguage.value]!,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60.0 * scaleFactorRatio,
                fontFamily: "OvertheRainbow",
                color: Colors.green,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double,
                decorationColor: const Color.fromARGB(225, 44, 138, 0))));

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
    double scaleFactorRatio =
        (widget.animatedScaleFactor / ResumePresentation.defaultScaleFactor)
            .clamp(0.0, 1.0);

    SquaredSheet resumePresentation = SquaredSheet(
        scaleFactor: ResumePresentation.defaultScaleFactor * scaleFactorRatio,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Row(children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: buildContent(scaleFactorRatio, constraints))
          ]);
        }));

    return resumePresentation;
  }
}
