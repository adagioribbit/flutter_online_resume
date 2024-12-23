import 'package:flutter/material.dart';
import 'dart:math' as math;

class ManilaFolder extends StatefulWidget {
  const ManilaFolder({super.key});

  @override
  State<ManilaFolder> createState() => _ManilaFolderState();
}

class _ManilaFolderState extends State<ManilaFolder>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  AnimationStatus _status = AnimationStatus.dismissed;
  late Size _lastSize;

  Color manilla = Color(0xffceb88f);
  Color manillaDarker = Color.fromARGB(255, 163, 145, 113);
  Color stickerLabel = Color.fromARGB(255, 241, 242, 232);
  Color background = Color(0xfffef7ff);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween(end: 0.7, begin: 0.01).animate(CurvedAnimation(
        parent: _controller, curve: Curves.easeInOutCubicEmphasized))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // [View.of] exposes the view from `WidgetsBinding.instance.platformDispatcher.views`
    // into which this widget is drawn.
    _lastSize = View.of(context).physicalSize;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    setState(() {
      _lastSize = View.of(context).physicalSize;
    });
    print('changed size $_lastSize');
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double screenWidth = MediaQuery.sizeOf(context).width;

    return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                if (_status == AnimationStatus.dismissed) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
              },
              child: Stack(children: [
                /* Conteneur extérieur */
                Transform(
                    alignment: FractionalOffset.center,
                    origin: Offset(0, 50),
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.0005)
                      ..rotateX(math.pi * -_animation.value / 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /* Conteneur de l'onglet */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              /* Onglet du dossier */
                              Container(
                                width: 150,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(color: manillaDarker),
                                      top: BorderSide(color: manillaDarker)),
                                  color: manilla,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0)),
                                ),
                                constraints: BoxConstraints(
                                  minHeight: 45,
                                  minWidth: 50,
                                ),
                                margin:
                                    EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                                child: Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Transform.rotate(
                                          angle: -math.pi / 40,
                                          child:
                                              /* Etiquette dossier */
                                              Container(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 10, 5),
                                                  decoration: BoxDecoration(
                                                    color: stickerLabel,
                                                    border: Border.all(
                                                        color: manillaDarker),
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            bottomRight: Radius
                                                                .circular(4.0)),
                                                  ),
                                                  child: Text("Formation",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold))))
                                    ]),
                              ),
                              /* Courbure de raccord de l'onglet au dossier */
                              Container(
                                width: 15,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    stops: [0, 0.2, 0.2, 1],
                                    colors: [
                                      background,
                                      background,
                                      manilla,
                                      manilla,
                                    ],
                                    center: Alignment.topRight,
                                    radius: 5,
                                  ),
                                ),
                                constraints: BoxConstraints(
                                  minHeight: 15,
                                ),
                              ),
                            ],
                          ),
                          /* Dos du dossier */
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(color: manillaDarker),
                                  right: BorderSide(color: manillaDarker),
                                  bottom: BorderSide(color: manillaDarker)),
                              color: manilla,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(4.0),
                                  bottomRight: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0,
                                  blurRadius: 15,
                                  offset: Offset(5, 12),
                                ),
                              ],
                            ),
                            constraints: BoxConstraints(
                              minHeight: 450,
                              minWidth: 250,
                              maxWidth: 650,
                            ),
                            margin:
                                EdgeInsetsDirectional.fromSTEB(50, 0, 50, 50),
                          ),
                        ])),
                /* Rabat du dossier */
                Transform(
                  alignment: FractionalOffset.center,
                  origin: Offset(0, 221),
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.0005)
                    ..rotateX(math.pi * _animation.value),
                  child: Container(
                    decoration: BoxDecoration(
                      color: manilla,
                      border: Border.all(color: manillaDarker),
                      borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(98, 75, 75, 75),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, -2),
                        ),
                      ],
                    ),
                    constraints: BoxConstraints(
                      maxHeight: 440,
                      minHeight: 440,
                      minWidth: 250,
                      maxWidth: 650,
                    ),
                    margin: EdgeInsetsDirectional.fromSTEB(50, 60, 50, 50),
                  ),
                )
              ]))
        ]);
  }
}
