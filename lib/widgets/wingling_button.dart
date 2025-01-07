import 'package:flutter/material.dart';
import 'dart:math' show pi;

class WinglingButton extends StatefulWidget {
  const WinglingButton({super.key});

  @override
  State<WinglingButton> createState() => _WinglingButtonState();
}

class _WinglingButtonState extends State<WinglingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  late Animation<double> _chainedAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1750));

    _animation = Tween<double>(begin: (-.3 * pi), end: (0)).animate(
      CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            0,
            0.1,
            curve: Curves.linear,
          ),
          reverseCurve: Interval(
            0.15,
            0.2,
            curve: Curves.linear,
          )),
    );

    _chainedAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween(begin: (-.3 * pi), end: (.15 * pi)),
          weight: 60.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween(begin: (-.25 * pi), end: (0)),
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
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.005)
              ..rotateX(_chainedAnimation.value),
            alignment: FractionalOffset.center,
            child: Text(
              "🤙🏻",
              style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      color: Color.fromARGB(90, 255, 255, 255),
                      blurRadius: 5.0,
                      offset: Offset.fromDirection(-.5 * pi, 2),
                    ),
                    Shadow(
                      color: Color.fromARGB(90, 127, 127, 127),
                      blurRadius: 5.0,
                      offset: Offset.fromDirection(-0.25 * pi, 2),
                    ),
                    Shadow(
                      color: Color.fromARGB(90, 127, 127, 127),
                      blurRadius: 5.0,
                      offset: Offset.fromDirection(-1.25 * pi, 2),
                    ),
                    Shadow(
                      color: Color.fromARGB(90, 0, 0, 0),
                      blurRadius: 5.0,
                      offset: Offset.fromDirection(-1.75 * pi, 2),
                    )
                  ],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          );
        });
  }
}
