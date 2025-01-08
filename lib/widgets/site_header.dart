import 'package:flutter/material.dart';
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;
import 'social_networking.dart';

class SiteHeader extends StatefulWidget implements PreferredSizeWidget {
  const SiteHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.APPBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

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
      actions: <Widget>[SocialNetworking()],
    );
  }
}
