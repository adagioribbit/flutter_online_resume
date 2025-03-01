import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dossier_de_competences_web/helpers/colorchart.dart'
    show skillsSetButtonPalette;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show GlobalKeyRing, appLanguage;
import 'package:flutter/material.dart';
import '../../../../helpers/constants.dart';
import '../../../../helpers/global_streams.dart';
import '../../bubble_hailer.dart';

class SkillGauge extends StatefulWidget implements PreferredSizeWidget {
  static const Duration animationDuration = Duration(milliseconds: 300);
  final String iconAssetPath, title;
  final VoidCallback? onPressedClbk;

  const SkillGauge(
      {required this.iconAssetPath,
      required this.title,
      this.onPressedClbk,
      super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SkillGauge> createState() => _SkillGaugeState();
}

class _SkillGaugeState extends State<SkillGauge> with TickerProviderStateMixin {
  CarouselSliderController carouselController = CarouselSliderController();
  CustomPaint bubbleHailer = CustomPaint(
    painter: BubbleHailerPainter(),
  );
  AnimationStatus _status = AnimationStatus.dismissed;
  late StreamSubscription subscription;
  late AnimationController _animationController;
  late Animation _animationLevelUp;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: SkillGauge.animationDuration);
    _animationLevelUp = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });

    subscription = globalStreams.eventSkillGauge.listen((value) async {
      _animationController.forward();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double titleFontSize = (constraints.maxWidth * 0.023).clamp(13, 18),
          imageHeight = constraints.maxHeight * 0.5;

      return ExpansionTile(
          tilePadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          collapsedShape: RoundedRectangleBorder(
            side: BorderSide(width: .5),
            borderRadius: BorderRadius.circular(8),
          ),
          leading: Image(
            image: AssetImage(widget.iconAssetPath),
            height: imageHeight,
          ),
          title: Text(widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: titleFontSize)));
    });
  }
}
