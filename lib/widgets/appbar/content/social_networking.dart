import 'package:flutter/material.dart';
import 'package:web/web.dart' as html;
import '../../../helpers/colorchart.dart';
import '../../../helpers/constants.dart';
import '../../../helpers/globals.dart' as globals;
import '../../../helpers/utils.dart';
import '../site_header.dart';
import 'wiggling_button.dart';

class SocialNetworking extends StatefulWidget {
  final AnimationController animationController;

  const SocialNetworking({super.key, required this.animationController});

  @override
  State<SocialNetworking> createState() => _SocialNetworkingState();
}

class _SocialNetworkingState extends State<SocialNetworking> {
  late bool isStacked = true, isFoldable, isPhoneScreen;
  late double wigglingButtonHeight,
      offsetLinkedIn,
      offsetGithub,
      offsetInstagram,
      wigglingButtonBottomMargin;
  late Animation _animationTranslate, _animationScale;
  late SiteHeader? parent;

  final _linkedInButton = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return IconButton(
        hoverColor: ColorChart.linkedInButtonShadowHovered,
        constraints: Constants.APPBAR_ACTIONS_BOXCONTRAINTS,
        icon: Image(
          image: AssetImage("lib/assets/appbar/linkedin.png"),
          fit: BoxFit.fill,
        ),
        tooltip: AppStrings.LINKEDIN_TOOLTIP[value],
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
        constraints: Constants.APPBAR_ACTIONS_BOXCONTRAINTS,
        icon: Image(
          image: AssetImage("lib/assets/appbar/github.png"),
          fit: BoxFit.fill,
        ),
        tooltip: AppStrings.GITHUB_TOOLTIP[value],
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
        constraints: Constants.APPBAR_ACTIONS_BOXCONTRAINTS,
        icon: Image(
          image: AssetImage("lib/assets/appbar/instagram.png"),
          fit: BoxFit.fill,
        ),
        tooltip: AppStrings.INSTAGRAM_TOOLTIP[value],
        onPressed: () {
          html.window.open(AppStrings.INSTAGRAM_URL, '_blank');
        },
      );
    },
  );

  @override
  void initState() {
    super.initState();
    parent = context.findAncestorWidgetOfExactType<SiteHeader>();

    wigglingButtonBottomMargin = 9;
    _animationTranslate = Tween(begin: 0.001, end: 1.0).animate(CurvedAnimation(
        parent: widget.animationController, curve: Curves.linear));
    _animationScale = Tween(begin: 1.25, end: 1.0).animate(CurvedAnimation(
        parent: widget.animationController,
        curve: Curves.easeInOutCubicEmphasized));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isFoldable = Utils.isFoldable(context);
    isPhoneScreen = Utils.isPhoneScreen(context);

    offsetLinkedIn = isFoldable ? 160 : 180;
    offsetGithub = isFoldable ? 110 : 125;
    offsetInstagram = isFoldable ? 50 : 65;

    isStacked = isPhoneScreen || isFoldable || Utils.screenWidth < 450;
    if (isFoldable) {
      wigglingButtonHeight = isStacked
          ? Constants.WIGGLING_BUTTON_HEIGHT_FOLDABLE
          : Constants.WIGGLING_BUTTON_HEIGHT_SHRUNK_FOLDABLE;
    } else {
      wigglingButtonHeight = isStacked ? Constants.WIGGLING_BUTTON_HEIGHT : 0;
    }
    widget.animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double rowSpacing = isFoldable ? 5 : 10;

    if (isFoldable || isPhoneScreen || Utils.screenWidth < 450) {
      Matrix4 matrixTransform = Matrix4.identity()
        // Translate Y
        ..setEntry(1, 3, 5.0 + (-10.0 * (1.0 - _animationTranslate.value)))
        // Scale
        ..setEntry(0, 0, _animationScale.value)
        ..setEntry(1, 1, _animationScale.value);

      return Row(
          spacing: rowSpacing,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AnimatedBuilder(
                animation: widget.animationController,
                builder: (context, child) {
                  return Transform(
                      transform: matrixTransform
                        //// Translate X
                        ..setEntry(
                            0, 3, offsetLinkedIn * _animationTranslate.value),
                      child: _linkedInButton);
                }),
            AnimatedBuilder(
                animation: widget.animationController,
                builder: (context, child) {
                  return Transform(
                      transform: matrixTransform
                        // Translate X
                        ..setEntry(
                            0, 3, offsetGithub * _animationTranslate.value),
                      child: _githubButton);
                }),
            AnimatedBuilder(
                animation: widget.animationController,
                builder: (context, child) {
                  return Transform(
                      transform: matrixTransform
                        // Translate X
                        ..setEntry(
                            0, 3, offsetInstagram * _animationTranslate.value),
                      child: _instagramButton);
                }),
            AnimatedContainer(
                duration: Duration(
                    milliseconds: Constants.WIGGLING_BUTTON_ANIMATION_DURATION),
                height: wigglingButtonHeight,
                width: wigglingButtonHeight,
                transform: Matrix4.identity()
                  // Translate X
                  ..setEntry(0, 3, 5)
                  // Translate Y
                  ..setEntry(1, 3, widget.animationController.value),
                child: WigglingButton(
                    isInflated: isStacked,
                    onPressedClbk: () {
                      setState(() {
                        isStacked = !isStacked;
                        wigglingButtonHeight = isStacked
                            ? Constants.WIGGLING_BUTTON_HEIGHT
                            : Constants.WIGGLING_BUTTON_HEIGHT_SHRUNK;

                        if (isStacked) {
                          widget.animationController.forward();
                        } else {
                          widget.animationController.reverse();
                        }
                      });
                    })),
          ]);
    } else {
      ;
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
