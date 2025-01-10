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

    offsetLinkedIn = 155;
    offsetGithub = 100;
    offsetInstagram = 56;
    wigglingButtonBottomMargin = 9;
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
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
      return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Transform.translate(
                  offset:
                      Offset(offsetLinkedIn * _animationController.value, 1),
                  child: _linkedInButton);
            }),
        AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Transform.translate(
                  offset: Offset(offsetGithub * _animationController.value, 1),
                  child: _githubButton);
            }),
        AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Transform.translate(
                  offset:
                      Offset(offsetInstagram * _animationController.value, 1),
                  child: _instagramButton);
            }),
        AnimatedContainer(
            duration: Duration(milliseconds: 50),
            height: parentHeight,
            width: parentHeight,
            transform: Matrix4.identity()
              ..setEntry(1, 3, -5 * _animationController.value),
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
      return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [_linkedInButton, _githubButton, _instagramButton]);
    }
  }
}
