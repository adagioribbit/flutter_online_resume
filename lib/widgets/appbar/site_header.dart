import 'dart:async' show StreamSubscription;

import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/widgets/appbar/content/flipping_appbar_iconbutton.dart';
import 'package:flutter/material.dart';
import '../../helpers/colorchart.dart';
import '../../helpers/constants.dart';
import '../../helpers/globals.dart' as globals;
import '../../helpers/utils.dart';
import 'content/social_networking.dart';

class SiteHeader extends StatefulWidget implements PreferredSizeWidget {
  const SiteHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.APPBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SiteHeader> createState() => _SiteHeaderState();
}

class _SiteHeaderState extends State<SiteHeader> with TickerProviderStateMixin {
  late double titleFontSize, subtitleFontSize, titlePaddingTop;
  late AnimationController _toggleAppBarController, _animationController;
  late Animation _animationToggleAppBar,
      _animationBackgroundColor,
      _animationTitleColor,
      _animationOpacity;
  late StreamSubscription subscription;

  var languageButton = ValueListenableBuilder(
      valueListenable: globals.appLanguage,
      builder: (context, language, widget) {
        String secondLanguage = (language == 'fr' ? 'en' : 'fr');
        return FlippingAppBarIconButton(
            frontImageFilePath:
                AppStrings.LANGUAGE_SWITCH_IMAGE_PATH[language]!,
            backImageFilePath: AppStrings.LANGUAGE_SWITCH_IMAGE_PATH[language]!,
            frontTooltip: AppStrings.LANGUAGE_SWITCH_TOOLTIP[language],
            backTooltip: AppStrings.LANGUAGE_SWITCH_TOOLTIP[language],
            onPressedClbk: () => {globals.appLanguage.value = secondLanguage});
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

    _toggleAppBarController = AnimationController(
        vsync: this,
        duration:
            const Duration(milliseconds: Constants.HEADER_ANIMATION_DURATION));

    _animationToggleAppBar = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _toggleAppBarController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });

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

    subscription = globalStreams.eventToggleAppBar.listen((isHidden) async {
      if (isHidden) {
        _toggleAppBarController.forward();
      } else {
        _toggleAppBarController.reverse();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    globals.isFoldable.value = Utils.isFoldable(context);

    if (Utils.isPhoneScreen(context) | globals.isFoldable.value) {
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
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var componentHeight = globals.isFoldable.value
        ? Constants.WIGGLING_BUTTON_HEIGHT_FOLDABLE
        : Constants.WIGGLING_BUTTON_HEIGHT;

    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Flex(
              mainAxisAlignment: MainAxisAlignment.start,
              direction: Axis.vertical,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                    decoration: BoxDecoration(
                      color: _animationBackgroundColor.value,
                      boxShadow: [
                        BoxShadow(
                          color: ColorChart.toolbarBoxShadow,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                      border: Border(
                          bottom: BorderSide(
                              color: ColorChart.toolbarBorder, width: 1.0),
                          left: BorderSide(
                              color: ColorChart.toolbarBorder, width: 0.5),
                          right: BorderSide(
                              color: ColorChart.toolbarBorder, width: 0.5)),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    height:
                        Constants.APPBAR_HEIGHT * _animationToggleAppBar.value,
                    child: AnimatedBuilder(
                        animation: _animationController,
                        builder: (context, child) {
                          return Container(
                            child: Stack(children: [
                              Center(
                                  child: Flex(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      direction: Axis.horizontal,
                                      children: [
                                    SizedBox(
                                        height: componentHeight,
                                        width: componentHeight),
                                    Expanded(
                                        child: Opacity(
                                            opacity: _animationOpacity.value,
                                            child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, titlePaddingTop, 0, 0),
                                                height: componentHeight,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(AppStrings.APP_TITLE,
                                                          style: TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  titleFontSize,
                                                              color:
                                                                  _animationTitleColor
                                                                      .value)),
                                                      ValueListenableBuilder(
                                                        valueListenable:
                                                            globals.appLanguage,
                                                        builder: (context,
                                                            value, widget) {
                                                          return Text(
                                                              AppStrings
                                                                      .APP_SUBTITLE[
                                                                  value]!,
                                                              style: TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .none,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      subtitleFontSize,
                                                                  color: _animationTitleColor
                                                                      .value));
                                                        },
                                                      ),
                                                    ])))),
                                    Container(
                                      height: componentHeight,
                                      width: componentHeight,
                                    )
                                  ])),
                              Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        languageButton
                                      ], //, darkModeButton
                                    ),
                                    SocialNetworking(
                                        animationController:
                                            _animationController)
                                  ])
                            ]),
                            //backgroundColor: _animationBackgroundColor.value,
                            //shadowColor: ColorChart.appBarShadow,
                            //elevation: 5,
                          );
                        }))
              ]);
        });
  }
}
