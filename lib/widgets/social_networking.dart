import 'package:flutter/material.dart';
import 'package:web/web.dart' as html;
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;
import '../helpers/utils.dart';
import 'wiggling_button.dart';

class SocialNetworking extends StatefulWidget {
  const SocialNetworking({super.key});

  @override
  State<SocialNetworking> createState() => _SocialNetworkingState();
}

class _SocialNetworkingState extends State<SocialNetworking>
    with SingleTickerProviderStateMixin {
  late bool isShrinked;
  late double parentHeight,
      offsetLinkedIn,
      offsetGithub,
      offsetInstagram,
      wigglingButtonBottomMargin;
  late Animation _animationTranslate, _animationScale;
  late AnimationController _animationController;

  final _linkedInButton = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return IconButton(
        hoverColor: ColorChart.linkedInButtonShadowHovered,
        constraints: Constants.TOOLBAR_ACTIONS_BOXCONTRAINTS,
        icon: Image(
          image: AssetImage("lib/assets/linkedin.png"),
          fit: BoxFit.fill,
        ),
        tooltip: AppStrings.LINKEDIN_TOOLTIP[globals.appLanguage.value],
        onPressed: () {
          html.window.open(AppStrings.LINKEDIN_URL, '_blank');
        },
      );
    },
  );

  final _githubButton = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return IconButton(
        hoverColor: ColorChart.githubButtonShadowHovered,
        constraints: Constants.TOOLBAR_ACTIONS_BOXCONTRAINTS,
        icon: Image(
          image: AssetImage("lib/assets/github.png"),
          fit: BoxFit.fill,
        ),
        tooltip: AppStrings.GITHUB_TOOLTIP[globals.appLanguage.value],
        onPressed: () {
          html.window.open(AppStrings.GITHUB_URL, '_blank');
        },
      );
    },
  );

  final _instagramButton = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return IconButton(
        hoverColor: ColorChart.instagralButtonShadowHovered,
        constraints: Constants.TOOLBAR_ACTIONS_BOXCONTRAINTS,
        icon: Image(
          image: AssetImage("lib/assets/instagram.png"),
          fit: BoxFit.fill,
        ),
        tooltip: AppStrings.INSTAGRAM_TOOLTIP[globals.appLanguage.value],
        onPressed: () {
          html.window.open(AppStrings.INSTAGRAM_URL, '_blank');
        },
      );
    },
  );

  @override
  void initState() {
    super.initState();

    offsetLinkedIn = 170;
    offsetGithub = 120;
    offsetInstagram = 58;
    wigglingButtonBottomMargin = 9;
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _animationTranslate = Tween(end: 1.0, begin: 0.001).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCubicEmphasized));
    _animationScale = Tween(end: 1.0, begin: 1.25).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCubicEmphasized));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isShrinked = Utils.isPhoneScreen(context);
    parentHeight = isShrinked ? Constants.SOCIAL_BUTTON_HEIGHT : 0;
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    if (Utils.isPhoneScreen(context)) {
      return Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform(
                      transform: Matrix4.identity()
                        //// Translate X
                        ..setEntry(
                            0, 3, offsetLinkedIn * _animationTranslate.value)
                        // Translate Y
                        ..setEntry(1, 3,
                            5.0 + (-10.0 * (1.0 - _animationTranslate.value)))
                        // Scale
                        ..setEntry(0, 0, _animationScale.value)
                        ..setEntry(1, 1, _animationScale.value),
                      child: _linkedInButton);
                }),
            AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform(
                      transform: Matrix4.identity()
                        // Translate X
                        ..setEntry(
                            0, 3, offsetGithub * _animationTranslate.value)
                        // Translate Y
                        ..setEntry(1, 3,
                            5.0 + (-10.0 * (1.0 - _animationTranslate.value)))
                        // Scale
                        ..setEntry(0, 0, _animationScale.value)
                        ..setEntry(1, 1, _animationScale.value),
                      child: _githubButton);
                }),
            AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform(
                      transform: Matrix4.identity()
                        // Translate X
                        ..setEntry(
                            0, 3, offsetInstagram * _animationTranslate.value)
                        // Translate Y
                        ..setEntry(1, 3,
                            5.0 + (-10.0 * (1.0 - _animationTranslate.value)))
                        // Scale
                        ..setEntry(0, 0, _animationScale.value)
                        ..setEntry(1, 1, _animationScale.value),
                      child: _instagramButton);
                }),
            AnimatedContainer(
                duration: Duration(milliseconds: 50),
                height: parentHeight,
                width: parentHeight,
                transform: Matrix4.identity()
                  ..setEntry(0, 3, 5)
                  ..setEntry(1, 3, -3.0 * _animationController.value),
                child: WigglingButton(
                    isShrinked: isShrinked,
                    onPressedClbk: () {
                      setState(() {
                        isShrinked = !isShrinked;
                        parentHeight = isShrinked
                            ? Constants.SOCIAL_BUTTON_HEIGHT
                            : Constants.WIGGLING_BUTTON_HEIGHT_SHRUNK;
                        if (isShrinked) {
                          _animationController.forward();
                        } else {
                          _animationController.reverse();
                        }
                      });
                    })),
          ]);
    } else {
      return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Transform(
          transform: Matrix4.identity()
            // Translate X
            ..setEntry(0, 3, -30.0)
            // Translate Y
            ..setEntry(1, 3, -10.0)
            // Scale
            ..setEntry(0, 0, 1.5)
            ..setEntry(1, 1, 1.5),
          child: _linkedInButton,
        ),
        Transform(
            transform: Matrix4.identity()
              // Translate X
              ..setEntry(0, 3, -20.0)
              // Translate Y
              ..setEntry(1, 3, -10.0)
              // Scale
              ..setEntry(0, 0, 1.5)
              ..setEntry(1, 1, 1.5),
            child: _githubButton),
        Transform(
            transform: Matrix4.identity()
              // Translate X
              ..setEntry(0, 3, -10.0)
              // Translate Y
              ..setEntry(1, 3, -10.0)
              // Scale
              ..setEntry(0, 0, 1.5)
              ..setEntry(1, 1, 1.5),
            child: _instagramButton)
      ]);
    }
  }
}
