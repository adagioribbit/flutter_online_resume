import 'package:flutter/material.dart';

class SquaredSheet extends StatelessWidget {
  final dynamic child;
  final double scaleFactor;

  const SquaredSheet({this.child, this.scaleFactor = 5.0, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(10.0),
        padding: EdgeInsetsDirectional.fromSTEB(
            4.5 * scaleFactor, 3.0 * scaleFactor, 0, 2.0 * scaleFactor),
        constraints: BoxConstraints(
          minWidth: 21.0 * scaleFactor,
          minHeight: 29.7 * scaleFactor,
          maxWidth: 21.0 * scaleFactor,
          maxHeight: 29.7 * scaleFactor,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage("lib/assets/blank_squared_sheet.png"),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(39, 0, 0, 0),
              spreadRadius: 5,
              blurRadius: 30,
              offset: Offset(10, 25),
            ),
          ],
        ),
        child: Container(
          child: child,
        ));
  }
}
