import 'dart:math' show pi;
import 'package:flutter/material.dart';
import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;

class DarkModeFlippingIconButton extends StatefulWidget {
  final VoidCallback? onPressedClbk;

  const DarkModeFlippingIconButton({required this.onPressedClbk, super.key});

  @override
  State<DarkModeFlippingIconButton> createState() =>
      _DarkModeFlippingIconButtonState();
}

class _DarkModeFlippingIconButtonState extends State<DarkModeFlippingIconButton>
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
    return ValueListenableBuilder(
        valueListenable: globals.isDarkMode,
        builder: (context, darkMode, widget) {
          return ValueListenableBuilder(
              valueListenable: globals.appLanguage,
              builder: (context, language, widget) {
                return AnimatedBuilder(
                    animation: _animationFlipping,
                    builder: (context, child) {
                      return Container(
                          height: Constants.APPBAR_HEIGHT,
                          width: Constants.APPBAR_HEIGHT,
                          child: Transform(
                              transform: Matrix4.identity()
                                ..rotateY(pi - _animationFlipping.value),
                              alignment: Alignment.center,
                              child: _animationFlipping.value > 0.5 * pi
                                  ? IconButton(
                                      icon: Image(
                                        isAntiAlias: true,
                                        filterQuality: FilterQuality.high,
                                        image: AssetImage(AppStrings
                                            .DARK_MODE_IMAGE_PATH[false]!),
                                        fit: BoxFit.contain,
                                      ),
                                      tooltip: AppStrings.DARK_MODE_TOOLTIP[
                                          darkMode]![language],
                                      onPressed: () {
                                        isFlipped.value = !isFlipped.value;
                                        _animationController.forward();
                                        globals.isDarkMode.value = !darkMode;
                                      })
                                  : Transform(
                                      transform: Matrix4.identity()
                                        ..rotateY(_animationFlipping.value),
                                      alignment: Alignment.center,
                                      child: Transform(
                                          transform: Matrix4.identity()
                                            ..rotateY(
                                                pi - _animationFlipping.value),
                                          alignment: Alignment.center,
                                          child: IconButton(
                                              icon: Image(
                                                isAntiAlias: true,
                                                filterQuality:
                                                    FilterQuality.high,
                                                image: AssetImage(AppStrings
                                                        .DARK_MODE_IMAGE_PATH[
                                                    true]!),
                                                fit: BoxFit.contain,
                                              ),
                                              tooltip:
                                                  AppStrings.DARK_MODE_TOOLTIP[
                                                      darkMode]![language],
                                              onPressed: () {
                                                isFlipped.value =
                                                    !isFlipped.value;
                                                _animationController.reverse();
                                                globals.isDarkMode.value =
                                                    !darkMode;
                                              })),
                                    )));
                    });
              });
        });
  }
}
