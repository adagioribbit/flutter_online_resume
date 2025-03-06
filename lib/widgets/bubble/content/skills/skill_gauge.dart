import 'package:dossier_de_competences_web/helpers/globals.dart';
import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/colorchart.dart' show skillsSetButtonPalette;

class SkillGauge extends StatefulWidget implements PreferredSizeWidget {
  static const Duration animationDuration = Duration(milliseconds: 1500);
  final double nbYearsPractice;

  const SkillGauge({required this.nbYearsPractice, super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SkillGauge> createState() => _SkillGaugeState();
}

class _SkillGaugeState extends State<SkillGauge> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late double nbYearsPractice, totalYearsExperience;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: SkillGauge.animationDuration,
    )..addListener(() {
        setState(() {});
      });
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );
    totalYearsExperience =
        (DateTime.now().difference(DateTime(2015, 9, 1)).inDays / 365);
    nbYearsPractice = widget.nbYearsPractice;
    _animationController.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomPaint gaugeScale = CustomPaint(
      painter: GaugeScalePainter(
          nbYearsPractice: nbYearsPractice,
          totalYearsExperience: totalYearsExperience,
          animation: _animation),
    );

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double gaugeContainerHeight = (constraints.maxWidth * 0.06).clamp(30, 36);

      return Container(height: gaugeContainerHeight, child: gaugeScale);
    });
  }
}

class GaugeScalePainter extends CustomPainter {
  final Color fillColor = skillsSetButtonPalette.icon;
  final double strokeWidth = .5;
  final double nbYearsPractice, totalYearsExperience;
  final Animation<double> animation;

  GaugeScalePainter(
      {required this.nbYearsPractice,
      required this.totalYearsExperience,
      required this.animation});

  @override
  void paint(Canvas canvas, Size size) {
    double step = size.width / (totalYearsExperience + 1),
        gaugeLevelWidth = (nbYearsPractice * step) + 0.5,
        gaugeLevelTop = size.height / 2.3,
        gaugeLevelBottom = size.height - gaugeLevelTop,
        currGaugeLevel = gaugeLevelWidth * animation.value,
        gaugeCenter = size.height / 2,
        gaugeIndicatorRadius = size.height * 0.55,
        indicatorFontSize = size.height * 0.35;

    List<String> indicatorLines = [];
    if (nbYearsPractice < .91) {
      int nbMonths =
          double.parse((nbYearsPractice * 12).round().toStringAsFixed(2))
                  .toInt() %
              12;
      indicatorLines.add((nbMonths == 1)
          ? "${AppStrings.MONTH_SINGULAR[appLanguage.value]}"
          : "${AppStrings.MONTH_PLURAL[appLanguage.value]}");
      indicatorLines.add("$nbMonths");
    } else {
      int nbYears = nbYearsPractice.round().toInt();
      indicatorLines.add((nbYears == 1)
          ? "${AppStrings.YEAR_SINGULAR[appLanguage.value]}"
          : "${AppStrings.YEAR_PLURAL[appLanguage.value]}");
      indicatorLines.add(nbYears.toString());
    }

    Paint paintStrokeScale = Paint()
          ..color = fillColor
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke,
        paintFillScale = Paint()
          ..color = fillColor
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill,
        paintFillGaugeLevel = Paint()
          ..color = fillColor
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill,
        paintFillIndicator = Paint()
          ..color = Color.fromARGB(255, 233, 190, 134)
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.fill;

    canvas.drawPath(getScalePath(size.width, size.height), paintStrokeScale);
    canvas.drawPath(getScalePath(size.width, size.height), paintFillScale);
    canvas.drawRect(
        Rect.fromLTRB(0, gaugeLevelTop, currGaugeLevel, gaugeLevelBottom),
        paintFillGaugeLevel);

    double indicatorMinX = 0;
    for (int idx = 0; idx < indicatorLines.length; idx++) {
      var textStyle = TextStyle(
          color: Colors.black,
          backgroundColor: Colors.transparent,
          fontFamily: "Cabin",
          fontSize: indicatorFontSize,
          fontWeight: FontWeight.bold);
      var textSpan = TextSpan(
        text: indicatorLines[idx],
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(
        minWidth: 0,
        maxWidth: size.width,
      );

      double indicatorRadius = (textPainter.width / 2);
      if (indicatorMinX > 0) {
        indicatorMinX -= indicatorRadius;
      }
      double indicatorX = (currGaugeLevel - indicatorRadius)
          .clamp(indicatorMinX, size.width - indicatorRadius);
      if (indicatorX == 0) {
        indicatorMinX = indicatorRadius;
      }
      double indicatorY = gaugeCenter -
          (textPainter.height *
              (idx * 0.6 * (indicatorLines.length - idx * 0.6)));

      if (appLanguage.value == 'en') {
        indicatorY -= textPainter.height * 0.25;
      }

      final offset = Offset(indicatorX, indicatorY);

      // Draw indicator container first
      if (idx == 0) {
        canvas.drawOval(
            Rect.fromCircle(
                center: Offset(indicatorX + indicatorRadius, gaugeCenter),
                radius: gaugeIndicatorRadius + 2),
            paintFillGaugeLevel);
        canvas.drawOval(
            Rect.fromCircle(
                center: Offset(indicatorX + indicatorRadius, gaugeCenter),
                radius: gaugeIndicatorRadius),
            paintFillIndicator);
      }

      textPainter.paint(canvas, offset);
    }
  }

  Path getScalePath(double sizeX, double sizeY) {
    double stepTop = sizeY / 4.0,
        stepBottom = stepTop * 3.0,
        verticalCenter = sizeY / 2.0,
        radiusStops = sizeY / 10.0;
    double step = sizeX / (totalYearsExperience + 1);

    // Scale backbone
    Path scalePath = Path()
      ..moveTo(0, 0)
      ..lineTo(0, sizeY)
      ..moveTo(.5, 0)
      ..lineTo(.5, sizeY)
      ..moveTo(1, 0)
      ..lineTo(1, sizeY)
      ..moveTo(0, verticalCenter)
      ..lineTo(sizeX, verticalCenter)
      ..addOval(Rect.fromCircle(
          center: Offset(sizeX - radiusStops, verticalCenter),
          radius: radiusStops));

    // Scale steps
    double graduationPosition = step;
    while (graduationPosition < sizeX) {
      scalePath
        ..moveTo(graduationPosition - strokeWidth, stepTop)
        ..lineTo(graduationPosition - strokeWidth, stepBottom)
        ..moveTo(graduationPosition, stepTop)
        ..lineTo(graduationPosition, stepBottom)
        ..moveTo(graduationPosition + strokeWidth, stepTop)
        ..lineTo(graduationPosition + strokeWidth, stepBottom);
      graduationPosition += step;
    }
    return scalePath;
  }

  @override
  bool shouldRepaint(GaugeScalePainter oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
