import 'package:flutter/material.dart';
import 'dart:math' show pi;

import '../helpers/colorchart.dart';

class WigglingButton extends StatefulWidget {
  const WigglingButton({super.key});

  @override
  State<WigglingButton> createState() => _WigglingButtonState();
}

class _WigglingButtonState extends State<WigglingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late bool isTouchedOnce = false;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1750));

    _animation = TweenSequence(
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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            padding: WidgetStateProperty.all<EdgeInsets>(
                EdgeInsets.fromLTRB(3, 11, 5, 15)),
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.hovered)) {
                  return const Color.fromARGB(255, 79, 98, 128);
                } else if (states.contains(WidgetState.pressed)) {
                  return ColorChart.appBarButtonPlusBackgroundPressed;
                }
                return Color.fromARGB(255, 130, 148, 179);
              },
            ),
            shadowColor: WidgetStateProperty.all<Color>(
                ColorChart.appBarButtonPlusShadow),
            elevation: WidgetStateProperty.resolveWith<double>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) return 10;
                return 5;
              },
            ),
            animationDuration: Duration(milliseconds: 200)),
        onPressed: () {
          isTouchedOnce = true;
          // Créer 2 états : shrinked/dilated
          // Créer une transition animée entre les deux états
          // Lier la transition à l'événement onPressed

          // Transférer les trois autres boutons dans un seul widget statefull
          // Créer 2 états d'affichage : stacked/flourished
          // --> bouton ? = dilated => stacked
          // --> bouton ? = shrinked => flourished
          // Faire un flourish vertical vers le bas
        },
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) {
              return Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.005)
                  ..rotateZ(isTouchedOnce ? 0 : -pi / 6)
                  ..rotateX(isTouchedOnce ? 0 : _animation.value),
                alignment: FractionalOffset.center,
                child: Text(
                  (isTouchedOnce ? "🤟🏻" : "🤙🏻"),
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          color: Color.fromARGB(127, 255, 255, 255),
                          blurRadius: 7.0,
                          offset: Offset.fromDirection(
                              -.5 * pi, isTouchedOnce ? 5 : 2),
                        ),
                        Shadow(
                          color: Color.fromARGB(127, 127, 127, 127),
                          blurRadius: 7.0,
                          offset: Offset.fromDirection(
                              -0.25 * pi, isTouchedOnce ? 5 : 2),
                        ),
                        Shadow(
                          color: Color.fromARGB(127, 127, 127, 127),
                          blurRadius: 7.0,
                          offset: Offset.fromDirection(
                              -1.25 * pi, isTouchedOnce ? 5 : 2),
                        ),
                        Shadow(
                          color: Color.fromARGB(127, 0, 0, 0),
                          blurRadius: 5.0,
                          offset: Offset.fromDirection(
                              -1.75 * pi, isTouchedOnce ? 7 : 2),
                        )
                      ],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              );
            }));
  }
}
