/**
 * TODO LIST :
 *    - Ajouter un contrôle d'animation similaire à celui utilisé dans ManilaFolder
 */

import 'package:flutter/material.dart';
import 'dart:math' show pi;

import '../helpers/curved_text_painter.dart';

enum STATUS { IDLE, RADAR, MOVING, CLEANING, RECYCLE, ALARM }

class Zoombee extends StatefulWidget {
  static const String _brand = "ZOOMBEE";
  static const double _pixelsPerMilliseconds = .5;

  final double radius;

  const Zoombee({this.radius = 250, super.key});

  @override
  State<Zoombee> createState() => _ZoombeeState();
}

class _ZoombeeState extends State<Zoombee> with TickerProviderStateMixin {
  GlobalKey keyZoombee = GlobalKey(debugLabel: "robot");
  late STATUS status = STATUS.RECYCLE;
  late double widgetScale;
  late int movementDuration;
  late Alignment destinationAlignment;
  late Offset clickedPosition;
  late double positionAlignmentX,
      positionAlignmentY,
      destinationAlignmentX,
      destinationAlignmentY;
  late AnimationController _animationStatusController,
      _animationMoveAroundController;
  late Animation<double> _animationStatusSnore,
      _animationStatusMoving,
      _animationStatusRadar,
      _animationStatusRecycling,
      _animationMoveAroundX,
      _animationMoveAroundY,
      _animationTidyUp;

  @override
  void initState() {
    positionAlignmentX = -1.0;
    positionAlignmentY = 1.0;
    destinationAlignmentX = -1.0;
    destinationAlignmentY = 1.0;
    destinationAlignment =
        Alignment(destinationAlignmentX, destinationAlignmentY);
    movementDuration = 5000;
    clickedPosition = Offset(destinationAlignmentX, destinationAlignmentY);

    _animationStatusController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
          ..repeat(reverse: true);

    _animationStatusMoving = Tween<double>(begin: -0.4, end: 0.6).animate(
      CurvedAnimation(
          parent: _animationStatusController, curve: Curves.elasticInOut),
    );

    _animationStatusSnore = Tween<double>(begin: 0.2, end: 1.1).animate(
      CurvedAnimation(
          parent: _animationStatusController, curve: Curves.easeInOutQuart),
    );

    _animationStatusRadar = Tween<double>(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _animationStatusController, curve: Curves.easeInOutQuart),
    );

    _animationStatusMoving = Tween<double>(begin: -0.4, end: 0.6).animate(
      CurvedAnimation(
          parent: _animationStatusController, curve: Curves.elasticInOut),
    );

    _animationStatusRecycling = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _animationStatusController, curve: Curves.easeInOutQuart),
    );

    _animationMoveAroundController = AnimationController(
        vsync: this, duration: Duration(milliseconds: movementDuration));

    _animationMoveAroundX =
        Tween<double>(begin: positionAlignmentX, end: destinationAlignmentX)
            .animate(
      CurvedAnimation(
          parent: _animationMoveAroundController, curve: Curves.easeInOutQuart),
    );
    _animationMoveAroundY =
        Tween<double>(begin: positionAlignmentY, end: destinationAlignmentY)
            .animate(
      CurvedAnimation(
          parent: _animationMoveAroundController, curve: Curves.easeInOutQuart),
    );

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
          parent: _animationStatusController,
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

    widgetScale = (widget.radius / 250.0);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _animationStatusController.dispose();
    _animationMoveAroundController.dispose();
    super.dispose();
  }

  Widget getStatusDisplay() {
    Widget statusEmoji;
    switch (status) {
      case STATUS.IDLE:
        _animationStatusController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 2500))
          ..repeat(reverse: true);
        _animationStatusSnore = Tween<double>(begin: 0.2, end: 1.1).animate(
          CurvedAnimation(
              parent: _animationStatusController, curve: Curves.easeInOutQuart),
        );

        statusEmoji = AnimatedBuilder(
            animation: _animationStatusController,
            builder: (context, _) {
              return Transform(
                  transform: Matrix4.identity()
                    // Scale
                    ..setEntry(0, 0, _animationStatusSnore.value)
                    ..setEntry(1, 1, _animationStatusSnore.value),
                  alignment: FractionalOffset.center,
                  child: Text(
                    "💤",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        backgroundColor: Colors.transparent,
                        fontSize: widget.radius / 1.5),
                  ));
            });
      case STATUS.RADAR:
        _animationStatusController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 1000))
          ..repeat(reverse: true);
        _animationStatusRadar = Tween<double>(begin: -1.0, end: 1.0).animate(
          CurvedAnimation(
              parent: _animationStatusController, curve: Curves.easeInOutQuart),
        );

        statusEmoji = AnimatedBuilder(
            animation: _animationStatusController,
            builder: (context, _) {
              return Transform(
                  transform: Matrix4.identity()
                    ..rotateZ(2.0 * pi * _animationStatusRadar.value)
                    // Scale
                    ..setEntry(0, 0, _animationStatusRadar.value.abs())
                    ..setEntry(1, 1, _animationStatusRadar.value.abs()),
                  alignment: FractionalOffset.center,
                  child: Text(
                    "!?",
                    textAlign: TextAlign.center,
                    textScaler: TextScaler.linear(2.0),
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: "Handwritten",
                        color: Colors.red,
                        backgroundColor: Colors.transparent,
                        fontWeight: FontWeight.bold,
                        fontSize: widget.radius / 2.7),
                  ));
            });
        break;
      case STATUS.MOVING:
        _animationStatusController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 1500))
          ..repeat(reverse: true);
        _animationStatusMoving = Tween<double>(begin: -0.4, end: 0.6).animate(
          CurvedAnimation(
              parent: _animationStatusController, curve: Curves.elasticInOut),
        );

        statusEmoji = AnimatedBuilder(
            animation: _animationStatusController,
            builder: (context, _) {
              return Transform(
                  transform: Matrix4.identity()
                    ..rotateZ(0.08 * pi * _animationStatusMoving.value),
                  alignment: FractionalOffset.center,
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Colors.green,
                            const Color.fromARGB(169, 37, 126, 40),
                            const Color.fromARGB(169, 28, 77, 30),
                            const Color.fromARGB(185, 76, 175, 79),
                          ],
                          stops: [0.5, 0.9, 0.99, 1],
                        ),
                      ),
                      child: Text(
                        "🧟",
                        textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            backgroundColor: Colors.transparent,
                            fontSize: widget.radius / 1.55),
                      )));
            });
        break;
      case STATUS.CLEANING:
        statusEmoji = Text(
          "🧽",
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.none,
              backgroundColor: Colors.transparent,
              fontSize: widget.radius / 2.0),
        );
        break;
      case STATUS.RECYCLE:
        _animationStatusController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 3000))
          ..repeat();
        _animationStatusRecycling = Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
              parent: _animationStatusController, curve: Curves.linear),
        );

        statusEmoji = AnimatedBuilder(
            animation: _animationStatusController,
            builder: (context, _) {
              return Transform(
                  transform: Matrix4.identity()
                    ..rotateZ(2 * pi * _animationStatusRecycling.value),
                  alignment: FractionalOffset.center,
                  child: Text(
                    "♻️",
                    textScaler: TextScaler.linear(1.1),
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.green,
                        backgroundColor: Colors.transparent,
                        fontSize: widget.radius / 1.55),
                  ));
            });
        break;
      case STATUS.ALARM:
        statusEmoji = Text(
          "🚨",
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.none,
              backgroundColor: Colors.transparent,
              fontSize: widget.radius / 2.0),
        );
        break;
    }
    return statusEmoji;
  }

  void onPositionChange(Offset destinationPosition, Size? containerSize) {
    Offset containerCenterPosition =
        Offset(context.size!.width / 2.0, context.size!.height / 2.0);
    double destinationAlignmentX =
        (destinationPosition.dx - containerCenterPosition.dx) /
            containerCenterPosition.dx;
    double destinationAlignmentY =
        (destinationPosition.dy - containerCenterPosition.dy) /
            containerCenterPosition.dy;

    //print(
    //    "------- destinationAlignmentX = $destinationAlignmentX / destinationAlignmentY $destinationAlignmentY");

    destinationAlignment =
        Alignment(destinationAlignmentX, destinationAlignmentY);

    RenderBox zoombeeRenderBox =
        keyZoombee.currentContext?.findRenderObject() as RenderBox;
    Offset offsetZoombee = zoombeeRenderBox.localToGlobal(Offset.zero);

    movementDuration = ((offsetZoombee - destinationPosition).distance /
            Zoombee._pixelsPerMilliseconds)
        .round();

    //print(
    //    "------- offsetZoombee = $offsetZoombee / destinationPosition ${destinationPosition} / destinationAlignment $destinationAlignment");
    //print("------- movementDuration = $movementDuration");
    clickedPosition = destinationPosition;
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: GestureDetector(
            onLongPressMoveUpdate: (LongPressMoveUpdateDetails details) =>
                onPositionChange(details.localPosition, context.size),
            onPanEnd: (DragEndDetails details) =>
                onPositionChange(details.localPosition, context.size),
            onTapUp: (TapUpDetails details) =>
                onPositionChange(details.localPosition, context.size),
            child: Container(
                color: Colors.transparent,
                child: Stack(alignment: destinationAlignment, children: [
                  // Partie basse
                  AnimatedPositioned(
                      key: keyZoombee,
                      left: clickedPosition.dx,
                      top: clickedPosition.dy,
                      duration: Duration(milliseconds: movementDuration),
                      child: AnimatedContainer(
                          duration: Duration(milliseconds: movementDuration),
                          child: Transform(
                              // Perspective effect between bottom and top
                              transform: Matrix4.identity()
                                // Translate Y
                                ..setEntry(1, 3,
                                    -20.0 * destinationAlignmentY * widgetScale)
                                // Translate X
                                ..setEntry(
                                    0,
                                    3,
                                    -20.0 *
                                        destinationAlignmentX *
                                        widgetScale),
                              child: SizedBox.fromSize(
                                  size: Size(
                                      widget.radius * 2, widget.radius * 2),
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
                                      center: destinationAlignment,
                                    ),
                                    shape: BoxShape.circle,
                                  )))))),
                  AnimatedPositioned(
                      left: clickedPosition.dx,
                      top: clickedPosition.dy,
                      duration: Duration(milliseconds: movementDuration),
                      child: // Partie haute
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
                            painter: CurvedTextPainter(
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
                                              Offset(2 * widgetScale,
                                                  -2 * widgetScale))
                                    ],
                                    fontWeight: FontWeight.bold,
                                    fontSize: widget.radius / 7.0)),
                          ),
                        ),
                      )),
                  AnimatedPositioned(
                      left: clickedPosition.dx,
                      top: clickedPosition.dy,
                      duration: Duration(milliseconds: movementDuration),
                      child: // Affichage LCD
                          SizedBox.fromSize(
                              size: Size(widget.radius * 2, widget.radius * 2),
                              child: Container(
                                  color: Colors.transparent,
                                  alignment: Alignment.center,
                                  child: SizedBox.fromSize(
                                      size: Size(widget.radius, widget.radius),
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          gradient: RadialGradient(
                                            colors: [
                                              Color(0xff7a7a7a),
                                              Color(0xff545454),
                                              Color(0xff292929)
                                            ],
                                            stops: [0.05, 0.2, 0.87],
                                            // TODO: MANQUE UNE ANIMATION
                                            // A PRENDRE EN COMPTE DANS L'ORIENTATION :
                                            //    --> doit être fonction (inverse ?) du décalage au centre du conteneur
                                            center: Alignment(
                                                destinationAlignment.x,
                                                -destinationAlignment.y),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: getStatusDisplay(),
                                      ))))),
                ]))));
  }
}
