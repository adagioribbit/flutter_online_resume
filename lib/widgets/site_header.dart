import 'package:dossier_de_competences_web/widgets/flipping_appbar_iconbutton.dart';
import 'package:flutter/material.dart';
import '../helpers/colorchart.dart';
import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;
import '../helpers/utils.dart';
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
  late double titleFontSize, subtitleFontSize, titlePaddingTop;
  late AnimationController _animationController;
  late Animation _animationBackgroundColor,
      _animationTitleColor,
      _animationOpacity;

  var languageButton = ValueListenableBuilder(
      valueListenable: globals.appLanguage,
      builder: (context, language, widget) {
        return FlippingAppBarIconButton(
            frontImageFilePath: AppStrings.LANGUAGE_SWITCH_IMAGE_PATH['fr']!,
            backImageFilePath: AppStrings.LANGUAGE_SWITCH_IMAGE_PATH['en']!,
            frontTooltip: AppStrings.LANGUAGE_SWITCH_TOOLTIP[language],
            backTooltip: AppStrings.LANGUAGE_SWITCH_TOOLTIP[language],
            onPressedClbk: () =>
                {globals.appLanguage.value = (language == 'fr' ? 'en' : 'fr')});
      });

  var darkModeButton = ValueListenableBuilder(
      valueListenable: globals.isDarkMode,
      builder: (context, darkMode, widget) {
        return ValueListenableBuilder(
            valueListenable: globals.appLanguage,
            builder: (context, language, widget) {
              return FlippingAppBarIconButton(
                  frontImageFilePath: AppStrings.DARK_MODE_IMAGE_PATH[false]!,
                  backImageFilePath: AppStrings.DARK_MODE_IMAGE_PATH[true]!,
                  frontTooltip:
                      AppStrings.DARK_MODE_TOOLTIP[darkMode]![language],
                  backTooltip:
                      AppStrings.DARK_MODE_TOOLTIP[darkMode]![language],
                  onPressedClbk: () => {globals.isDarkMode.value = !darkMode});
            });
      });

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
    if (Utils.isFoldable(context)) {
      titleFontSize = 22.0;
      subtitleFontSize = 14.0;
      titlePaddingTop = 10;
    } else if (Utils.isPhoneScreen(context)) {
      titleFontSize = 20.0;
      subtitleFontSize = 12.0;
      titlePaddingTop = 0.0;
    } else {
      titleFontSize = 23.0;
      subtitleFontSize = 14.0;
      titlePaddingTop = 2.0;
    }
    setState(() => {});
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
                    Container(
                      height: Constants.WIGGLING_BUTTON_HEIGHT,
                      width: Constants.WIGGLING_BUTTON_HEIGHT * 2,
                    ),
                    Expanded(
                        child: Opacity(
                            opacity: _animationOpacity.value,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    0, titlePaddingTop, 0, 0),
                                height: Constants.WIGGLING_BUTTON_HEIGHT,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(AppStrings.APP_TITLE,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: titleFontSize,
                                              color:
                                                  _animationTitleColor.value)),
                                      ValueListenableBuilder(
                                        valueListenable: globals.appLanguage,
                                        builder: (context, value, widget) {
                                          return Text(
                                              AppStrings.APP_SUBTITLE[value]!,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: subtitleFontSize,
                                                  color: _animationTitleColor
                                                      .value));
                                        },
                                      ),
                                    ])))),
                    Container(
                      height: Constants.WIGGLING_BUTTON_HEIGHT,
                      width: Constants.WIGGLING_BUTTON_HEIGHT,
                    )
                  ])),
              Flex(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [languageButton, darkModeButton],
                    ),
                    SocialNetworking(animationController: _animationController)
                  ])
            ]),
            backgroundColor: _animationBackgroundColor.value,
            shadowColor: ColorChart.appBarShadow,
            elevation: 5,
          );
        });
  }
}
