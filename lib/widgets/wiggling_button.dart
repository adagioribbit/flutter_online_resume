import 'package:flutter/material.dart';
import 'dart:math' show pi;
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/utils.dart';

class WigglingButton extends StatefulWidget {
  final VoidCallback? onPressedClbk;
  bool isShrinked;
  WigglingButton({this.isShrinked = false, this.onPressedClbk, super.key});

  @override
  State<WigglingButton> createState() => _WigglingButtonState();
}

class _WigglingButtonState extends State<WigglingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late bool isTouchedOnce = false;
  late double parentHeight;

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    updateSizeAndMargin();
  }

  void onToggleShrink() {
    setState(updateSizeAndMargin);
  }

  void updateSizeAndMargin() {
    parentHeight = widget.isShrinked
        ? Constants.WIGGLING_BUTTON_HEIGHT
        : Constants.WIGGLING_BUTTON_HEIGHT_SHRUNK;
  }

  String getIcon() {
    if (!widget.isShrinked) {
      return "lib/assets/pointing_left_sign_shadowed.png";
    } else if (isTouchedOnce) {
      return "lib/assets/love_you_sign_shadowed.png";
    } else {
      return "lib/assets/callme_sign_shadowed.png";
    }
  }

  Widget buildButtonText() {
    Widget buttonContent = Image(
      image: AssetImage(getIcon()),
      fit: BoxFit.fitHeight,
    );

    if (Utils.isPhoneScreen(context)) {
      return AnimatedBuilder(
          animation: _animationController,
          builder: (context, _) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.005)
                ..rotateZ(isTouchedOnce ? 0 : -pi / 6)
                ..rotateX(isTouchedOnce ? 0 : _animation.value),
              alignment: FractionalOffset.center,
              child: buttonContent,
            );
          });
    } else {
      return buttonContent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 50),
        height: parentHeight,
        width: parentHeight,
        child: ElevatedButton(
            style: ButtonStyle(
                padding: WidgetStateProperty.all<EdgeInsets>(
                    EdgeInsets.fromLTRB(3, 11, 5, 15)),
                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.hovered)) {
                      return ColorChart.appBarButtonPlusBackgroundHovered;
                    } else if (states.contains(WidgetState.pressed)) {
                      return ColorChart.appBarButtonPlusBackgroundPressed;
                    } else {
                      return ColorChart.appBarButtonPlusBackground;
                    }
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
              widget.isShrinked = !widget.isShrinked;
              onToggleShrink();
              widget.onPressedClbk!();
            },
            child: buildButtonText()));
  }
}
