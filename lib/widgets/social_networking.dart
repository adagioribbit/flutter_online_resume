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
  late AnimationController _animationController;
  late Animation<double> _animation;
  late bool isShrinked;
  late double parentHeight;

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    isShrinked = Utils.isPhoneScreen(context);
    parentHeight = isShrinked
        ? Constants.SOCIAL_BUTTON_HEIGHT
        : Constants.SOCIAL_BUTTON_HEIGHT_SHRUNK;
  }

  @override
  Widget build(BuildContext context) {
    if (Utils.isPhoneScreen(context)) {
      return Container(
          width: Constants.SOCIAL_BUTTON_HEIGHT_SHRUNK,
          height: Constants.SOCIAL_BUTTON_HEIGHT_SHRUNK,
          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
          color: Theme.of(context).colorScheme.secondaryContainer,
          child: OverflowBox(
              maxWidth: Constants.SOCIAL_BUTTON_HEIGHT,
              maxHeight: Constants.SOCIAL_BUTTON_HEIGHT,
              child: AnimatedContainer(
                  duration: Duration(milliseconds: 50),
                  height: parentHeight,
                  width: parentHeight,
                  child: WigglingButton(
                      isShrinked: isShrinked,
                      onPressedClbk: () {
                        // Créer une transition animée entre les deux états
                        setState(() {
                          isShrinked = !isShrinked;
                          parentHeight = parentHeight = isShrinked
                              ? Constants.SOCIAL_BUTTON_HEIGHT
                              : Constants.SOCIAL_BUTTON_HEIGHT_SHRUNK;
                        });

                        // Transférer les trois autres boutons dans un seul widget statefull
                        // Créer 2 états d'affichage : stacked/flourished
                        // --> bouton ? = dilated => stacked
                        // --> bouton ? = shrinked => flourished
                        // Faire un flourish vertical vers le bas,
                      }))));
    } else {
      return Row(children: [_linkedInButton, _githubButton, _instagramButton]);
    }
  }
}
