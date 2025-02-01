// With a little help from : https://github.com/Indy9000/flutter-canvas-tutorials/blob/main/text_arc/lib/mypainter.dart
import 'dart:math';
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  final String word;
  final TextStyle style;

  MyPainter(this.word, this.style);

  @override
  void paint(Canvas canvas, Size size) {
    final rotationCenter = Offset(size.width / 2.0, size.height / 2.0);
    final drawingArea = Rect.fromCenter(
        center: rotationCenter, width: size.width, height: size.height);
    canvas.clipRect(drawingArea);

    drawTextArc(canvas, rotationCenter, size.height / 3.5, word, style);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  TextPainter measureText(Canvas canvas, String text, TextStyle style) {
    final textSpan = TextSpan(text: text, style: style);
    final textPainter =
        TextPainter(text: textSpan, textDirection: TextDirection.ltr);
    textPainter.layout(minWidth: 0, maxWidth: double.maxFinite);
    return textPainter;
  }

  void drawTextArc(Canvas canvas, Offset arcCenter, double radius, String text,
      TextStyle style) {
    final pos = Offset(0, radius);
    final lp = measureText(canvas, text, style);
    double angle = (0.25 * pi) - (((lp.width / 2) / (2 * pi * radius)));

    text.split('').forEach((letter) {
      final tp = measureText(canvas, letter, style);
      final w = tp.width + 5.0;
      final double alpha = asin(w / (2 * radius));
      canvas.save();
      canvas.translate(arcCenter.dx, arcCenter.dy);
      angle -= alpha;
      canvas.rotate(angle);
      angle -= alpha;
      tp.paint(canvas, pos + Offset(-w / 2.0, 0.0));
      canvas.restore();
    });
  }
}
