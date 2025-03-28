import 'package:flutter/material.dart';
import 'dart:math' show pi;
import '../../../helpers/colorchart.dart';
import '../../../helpers/constants.dart';
import '../../../helpers/utils.dart';

class WigglingButton extends StatefulWidget {
  final VoidCallback? onPressedClbk;
  final bool isInflated;
  const WigglingButton(
      {this.isInflated = false, this.onPressedClbk, super.key});

  @override
  State<WigglingButton> createState() => _WigglingButtonState();
}

class _WigglingButtonState extends State<WigglingButton>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late bool isTouchedOnce = false;
  late double parentHeight;
  late bool isInflated = widget.isInflated;

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

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void updateSizeAndMargin() {
    parentHeight = isInflated
        ? Constants.WIGGLING_BUTTON_HEIGHT_SHRUNK
        : Constants.WIGGLING_BUTTON_HEIGHT;
  }

  void onToggleShrink() {
    setState(updateSizeAndMargin);
  }

  String getIcon() {
    if (!isTouchedOnce) {
      return "lib/assets/appbar/callme_sign_shadowed.png";
    } else if (isInflated) {
      return "lib/assets/appbar/love_you_sign_shadowed.png";
    } else {
      return "lib/assets/appbar/pointing_left_sign_shadowed.png";
    }
  }

  Widget buildButtonText() {
    Widget buttonContent = Image(
      image: AssetImage(getIcon()),
      fit: BoxFit.contain,
    );

    if (Utils.isFoldable(context)) {
      return AnimatedBuilder(
          animation: _animationController,
          builder: (context, _) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.005)
                ..setEntry(0, 0, 1.35)
                ..setEntry(1, 1, 1.35)
                ..rotateZ(isTouchedOnce ? 0 : -pi / 6)
                ..rotateX(isTouchedOnce ? 0 : _animation.value),
              alignment: FractionalOffset.center,
              child: buttonContent,
            );
          });
    } else {
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 50),
        height: parentHeight,
        width: parentHeight,
        child: ExcludeSemantics(
            excluding: true,
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
                    animationDuration: Duration(milliseconds: 200)),
                onPressed: () {
                  isTouchedOnce = true;
                  isInflated = !isInflated;
                  onToggleShrink();
                  widget.onPressedClbk!();
                },
                child: buildButtonText())));
  }
}
