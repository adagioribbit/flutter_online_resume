import 'dart:math' show pi;

import 'package:flutter/material.dart';
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/utils.dart';
import '../helpers/globals.dart' as globals;

class SiteHeader extends StatefulWidget implements PreferredSizeWidget {
  const SiteHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.APPBAR_HEIGHT);

  @override
  State<SiteHeader> createState() => _SiteHeaderState();
}

class _SiteHeaderState extends State<SiteHeader> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final _languageSwitchButton = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return IconButton(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: Image(
          image: AssetImage(AppStrings.LANGUAGE_SWITCH_IMAGE_PATH[value]!),
          fit: BoxFit.fill,
        ),
        tooltip: AppStrings.LANGUAGE_SWITCH_TOOLTIP[value],
        onPressed: () {
          if (value == 'fr') {
            globals.appLanguage.value = 'en';
          } else {
            globals.appLanguage.value = 'fr';
          }
        },
      );
    },
  );

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
        onPressed: () {},
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
        onPressed: () {},
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
        onPressed: () {},
      );
    },
  );

  final _socialmediaButton = Container(
      margin: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
      child: ElevatedButton(
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
          // Créer 2 états : shrinked/dilated
          // Créer une transition animée entre les deux états
          // Lier la transition à l'événement onPressed

          // Transférer les trois autres boutons dans un seul widget statefull
          // Créer 2 états d'affichage : stacked/flourished
          // --> bouton ? = dilated => stacked
          // --> bouton ? = shrinked => flourished
          // Faire un flourish vertical vers le bas
        },
        child: Text(
          "🤙🏻",
          style: TextStyle(shadows: <Shadow>[
            Shadow(
              color: Color.fromARGB(127, 255, 255, 255),
              blurRadius: 7.0,
              offset: Offset.fromDirection(-.5 * pi, 5),
            ),
            Shadow(
              color: Color.fromARGB(127, 127, 127, 127),
              blurRadius: 5.0,
              offset: Offset.fromDirection(-0.25 * pi, 5),
            ),
            Shadow(
              color: Color.fromARGB(127, 127, 127, 127),
              blurRadius: 5.0,
              offset: Offset.fromDirection(1.25 * pi, 5),
            ),
            Shadow(
              color: Color.fromARGB(127, 0, 0, 0),
              blurRadius: 5.0,
              offset: Offset.fromDirection(-1.75 * pi, 5),
            )
          ], fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ));

  renderActionWidgets(BuildContext context) {
    if (Utils.isDesktopScreen(context)) {
      return renderDesktopActionWidgets();
    } else if (Utils.isTabletScreen(context)) {
      return renderTabletActionWidgets();
    } else {
      return renderPhoneActionWidgets();
    }
  }

  renderTabletActionWidgets() {
    return renderDesktopActionWidgets();
  }

  renderPhoneActionWidgets() {
    return <Widget>[_socialmediaButton];
  }

  renderDesktopActionWidgets() {
    return <Widget>[_linkedInButton, _githubButton, _instagramButton];
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: Constants.APPBAR_HEIGHT,
      title: Center(
          child: Column(children: <Widget>[
        Text(AppStrings.APP_TITLE,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: ColorChart.appBarTitleText)),
        ValueListenableBuilder(
          valueListenable: globals.appLanguage,
          builder: (context, value, widget) {
            return Text(AppStrings.APP_SUBTITLE[globals.appLanguage.value]!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: ColorChart.appBarTitleText));
          },
        ),
      ])),
      backgroundColor: ColorChart.appBackground,
      shadowColor: ColorChart.appBarShadow,
      elevation: 5,
      leading: _languageSwitchButton,
      actions: renderActionWidgets(context),
    );
  }
}
