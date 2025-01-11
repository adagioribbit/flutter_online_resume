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

class _SiteHeaderState extends State<SiteHeader>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animationBackgroundColor,
      _animationTitleColor,
      _animationOpacity;

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
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration:
            const Duration(milliseconds: Constants.HEADER_ANIMATION_DURATION));

    _animationBackgroundColor = ColorTween(
            end: ColorChart.appBarBackground,
            begin: ColorChart.appBarBackgroundFaded)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));

    _animationTitleColor = ColorTween(
            end: ColorChart.appBarTitleText,
            begin: ColorChart.appBarTitleTextFaded)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));

    _animationOpacity = Tween(begin: 0.2, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return AppBar(
            toolbarHeight: Constants.APPBAR_HEIGHT,
            title: Stack(children: [
              Center(
                  child: Flex(
                      mainAxisAlignment: MainAxisAlignment.end,
                      direction: Axis.horizontal,
                      children: [
                    Expanded(
                        flex: 2,
                        child: Opacity(
                            opacity: _animationOpacity.value,
                            child: Column(children: <Widget>[
                              Text(AppStrings.APP_TITLE,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                      color: _animationTitleColor.value)),
                              ValueListenableBuilder(
                                valueListenable: globals.appLanguage,
                                builder: (context, value, widget) {
                                  return Text(
                                      AppStrings.APP_SUBTITLE[
                                          globals.appLanguage.value]!,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: _animationTitleColor.value));
                                },
                              ),
                            ]))),
                    Container(
                      height: Constants.WIGGLING_BUTTON_HEIGHT,
                      width: Constants.WIGGLING_BUTTON_HEIGHT,
                    )
                  ])),
              SocialNetworking(animationController: _animationController)
            ]),
            backgroundColor: _animationBackgroundColor.value,
            shadowColor: ColorChart.appBarShadow,
            elevation: 5,
            leading: _languageSwitchButton,
          );
        });
  }
}
