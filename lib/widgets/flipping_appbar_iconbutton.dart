import 'dart:math' show pi;
import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;
import 'site_header.dart';

class FlippingAppBarIconButton extends StatefulWidget {
  final VoidCallback? onPressedClbk;
  final String? frontImageFilePath,
      backImageFilePath,
      frontTooltip,
      backTooltip;

  const FlippingAppBarIconButton(
      {required this.frontImageFilePath,
      required this.backImageFilePath,
      required this.onPressedClbk,
      this.frontTooltip = "",
      this.backTooltip = "",
      super.key});

  @override
  State<FlippingAppBarIconButton> createState() =>
      _FlippingAppBarIconButtonState();
}

class _FlippingAppBarIconButtonState extends State<FlippingAppBarIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animationFlipping;
  final ValueNotifier<bool> isFlipped = ValueNotifier(false);

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _animationFlipping = Tween(
            begin: isFlipped.value ? 0.0 : pi, end: isFlipped.value ? pi : 0.0)
        .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationFlipping,
        builder: (context, child) {
          return Container(
              height: Constants.WIGGLING_BUTTON_HEIGHT,
              width: Constants.WIGGLING_BUTTON_HEIGHT,
              child: Transform(
                  transform: Matrix4.identity()
                    ..rotateY(pi - _animationFlipping.value),
                  alignment: Alignment.center,
                  child: _animationFlipping.value > 0.5 * pi
                      ? IconButton(
                          icon: Image(
                            isAntiAlias: true,
                            filterQuality: FilterQuality.high,
                            image: AssetImage(widget.frontImageFilePath!),
                            fit: BoxFit.contain,
                          ),
                          tooltip: widget.frontTooltip,
                          onPressed: () {
                            isFlipped.value = !isFlipped.value;
                            _animationController.forward();
                            widget.onPressedClbk!();
                          })
                      : Transform(
                          transform: Matrix4.identity()
                            ..rotateY(_animationFlipping.value),
                          alignment: Alignment.center,
                          child: Transform(
                              transform: Matrix4.identity()
                                ..rotateY(pi - _animationFlipping.value),
                              alignment: Alignment.center,
                              child: IconButton(
                                  icon: Image(
                                    isAntiAlias: true,
                                    filterQuality: FilterQuality.high,
                                    image:
                                        AssetImage(widget.backImageFilePath!),
                                    fit: BoxFit.contain,
                                  ),
                                  tooltip: widget.backTooltip,
                                  onPressed: () {
                                    isFlipped.value = !isFlipped.value;
                                    _animationController.reverse();
                                    widget.onPressedClbk!();
                                  })),
                        )));
        });
  }
}
