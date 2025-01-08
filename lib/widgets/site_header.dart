import 'package:flutter/material.dart';
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/utils.dart';
import '../helpers/globals.dart' as globals;
import 'wiggling_button.dart';

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
      child: WigglingButton());

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
