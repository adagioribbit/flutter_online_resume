import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import '../../helpers/utils.dart';

class BubbleHailerPainter extends CustomPainter {
  final Color strokeColor, fillColor;
  final double strokeWidth;

  BubbleHailerPainter(
      {this.strokeColor = const ui.Color.fromARGB(31, 0, 0, 0),
      this.fillColor = Colors.white,
      this.strokeWidth = 1});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paintStroke = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    Paint paintFill = Paint()
      ..color = fillColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.fill;

    canvas.drawPath(getHailerPath(size.width, size.height), paintStroke);
    canvas.drawPath(getHailerPath(size.width, size.height), paintFill);
  }

  Path getHailerPath(double x, double y) {
    bool isPortrait = Utils.isPortraitOrientation();

    //** Successful attempt at a cartoon curved hailer */
    //Path pathPointingDown = Path()
    //  ..moveTo(0, 0)c
    //  ..quadraticBezierTo(0, y * 0.7, x * 0.55, y)
    //  ..quadraticBezierTo(x * 0.25, y * 0.4, x * 0.7, 0);
    //return pathPointingDown;

    Path pathPointingDown = Path()
      ..moveTo(x, 0)
      ..lineTo(x / 2, y)
      ..lineTo(0, 0)
      ..lineTo(x, 0);
    Path pathPointingLeft = Path()
      ..moveTo(x, 0)
      ..lineTo(x, y)
      ..lineTo(0, y / 2)
      ..lineTo(x, 0);
    //return isPortrait ? pathPointingLeft : pathPointingDown;
    return pathPointingDown;
  }

  @override
  bool shouldRepaint(BubbleHailerPainter oldDelegate) {
    return oldDelegate.strokeColor != strokeColor ||
        oldDelegate.fillColor != fillColor ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
