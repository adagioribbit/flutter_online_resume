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
    nbYearsPractice = widget.nbYearsPractice ?? totalYearsExperience;
    _animationController.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
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
        gaugeLevelBottom = size.height - gaugeLevelTop;

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
          ..style = PaintingStyle.fill;

    canvas.drawPath(getScalePath(size.width, size.height), paintStrokeScale);
    canvas.drawPath(getScalePath(size.width, size.height), paintFillScale);
    canvas.drawRect(
        Rect.fromLTRB(0, gaugeLevelTop, gaugeLevelWidth * animation.value,
            gaugeLevelBottom),
        paintFillGaugeLevel);
  }

  Path getScalePath(double sizeX, double sizeY) {
    double stepTop = sizeY / 4.0,
        stepBottom = stepTop * 3.0,
        verticalCenter = sizeY / 2.0,
        radiusStops = sizeY / 10.0;
    double step = sizeX / (totalYearsExperience + 1);

    // Scale backbone
    Path scalePath = Path()
      ..moveTo(0, verticalCenter)
      ..lineTo(sizeX, verticalCenter)
      ..addOval(Rect.fromCircle(
          center: Offset(radiusStops, verticalCenter), radius: radiusStops))
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
