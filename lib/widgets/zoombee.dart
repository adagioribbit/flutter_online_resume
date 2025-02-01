import 'package:flutter/material.dart';
import 'dart:math' show pi;
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/utils.dart';
import 'mypainter.dart';

enum STATUS { IDLE, RADAR, CLEANING, ALARM }

class Zoombee extends StatefulWidget {
  static const String _brand = "ZOOMBEE";
  //static const String _brand = "eebmooZ";

  final double radius;

  const Zoombee({this.radius = 250, super.key});

  @override
  State<Zoombee> createState() => _ZoombeeState();
}

class _ZoombeeState extends State<Zoombee> with SingleTickerProviderStateMixin {
  late STATUS status = STATUS.IDLE;
  late double widgetScale;
  late AnimationController _animationController;
  late Animation<double> _animationTidyUp;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1750));

    _animationTidyUp = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween(begin: (.3 * pi), end: (-.3 * pi)),
          weight: 60.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween(begin: (.25 * pi), end: (0)),
          weight: 40.0,
        ),
      ],
    ).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            0,
            0.1,
            curve: Curves.linear,
          ),
          reverseCurve: Interval(
            0.1,
            0.2,
            curve: Curves.linear,
          )),
    );

    _animationController.repeat(reverse: true);

    widgetScale = (widget.radius / 250.0);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void onToggleShrink() {
    setState(() => {});
  }

  Widget getStatusDisplay() {
    Widget statusEmoji;
    switch (status) {
      case STATUS.IDLE:
        statusEmoji = AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) {
              return Transform(
                  transform: Matrix4.identity()
                    // Scale
                    ..setEntry(0, 0, 1)
                    ..setEntry(1, 1, 1),
                  alignment: FractionalOffset.center,
                  child: Text(
                    "💤",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        backgroundColor: Colors.transparent,
                        fontSize: widget.radius / 1.5),
                  ));
            });
      case STATUS.RADAR:
        statusEmoji = Text(
          "🧟",
          textAlign: TextAlign.center,
          style: TextStyle(
              backgroundColor: Colors.transparent,
              fontSize: widget.radius / 2.0),
        );
        break;
      case STATUS.CLEANING:
        statusEmoji = Text(
          "🧽",
          textAlign: TextAlign.center,
          style: TextStyle(
              backgroundColor: Colors.transparent,
              fontSize: widget.radius / 2.0),
        );
        break;
      case STATUS.ALARM:
        statusEmoji = Text(
          "🚨",
          textAlign: TextAlign.center,
          style: TextStyle(
              backgroundColor: Colors.transparent,
              fontSize: widget.radius / 2.0),
        );
        break;
    }
    return statusEmoji;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: Container(
            color: Colors.transparent,
            child: Stack(alignment: Alignment(0.5, 1.0), children: [
              // Partie basse
              Transform(
                  transform: Matrix4.identity()
                    // PRENDRE LA POSITION EN COMPTE :
                    //    --> doit être fonction du décalage au centre du conteneur
                    // Translate Y
                    ..setEntry(1, 3, -20.0 * widgetScale)
                    // Translate X
                    ..setEntry(0, 3, 20.0 * widgetScale),
                  child: SizedBox.fromSize(
                      size: Size(widget.radius * 2, widget.radius * 2),
                      child: Container(
                          decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            Color(0xff000000),
                            Color.fromARGB(255, 36, 36, 36),
                            Color.fromARGB(255, 36, 36, 36),
                            Color(0xff1c1c1c)
                          ],
                          stops: [0.5, 0.92, 0.99, 1],
                          // A PRENDRE EN COMPTE DANS L'ORIENTATION :
                          //    --> doit être fonction (inverse ?) du décalage au centre du conteneur
                          center: Alignment(-0.05, 0.05),
                        ),
                        shape: BoxShape.circle,
                      )))),
              // Partie haute
              Stack(children: [
                SizedBox.fromSize(
                  size: Size(widget.radius * 2, widget.radius * 2),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Color(0xff000000),
                          Color.fromARGB(138, 0, 0, 0),
                          Color.fromARGB(255, 0, 0, 0),
                          Color.fromARGB(255, 26, 26, 26)
                        ],
                        stops: [0.1, 0.7, 0.7, 1],
                        center: Alignment.center,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CustomPaint(
                      painter: MyPainter(
                          Zoombee._brand,
                          TextStyle(
                              letterSpacing: 2.0 * (widgetScale / 2.0),
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: const Color.fromARGB(
                                        192, 145, 145, 145),
                                    offset:
                                        // A PRENDRE EN COMPTE DANS L'ORIENTATION :
                                        //    --> doit être fonction (inverse ?) du décalage au centre du conteneur
                                        Offset(
                                            2 * widgetScale, -2 * widgetScale))
                              ],
                              fontWeight: FontWeight.bold,
                              fontSize: widget.radius / 7.0)),
                    ),
                  ),
                ),
                // Affichage LCD
                Container(
                    alignment: Alignment.center,
                    child: SizedBox.fromSize(
                        size: Size(widget.radius, widget.radius),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                Color(0xff7a7a7a),
                                Color(0xff545454),
                                Color(0xff292929)
                              ],
                              stops: [0.05, 0.2, 0.87],
                              // A PRENDRE EN COMPTE DANS L'ORIENTATION :
                              //    --> doit être fonction (inverse ?) du décalage au centre du conteneur
                              center: Alignment(0.6, -0.6),
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: getStatusDisplay(),
                        ))),
              ])
            ])));
  }
}
