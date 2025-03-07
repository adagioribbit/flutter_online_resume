import 'package:dossier_de_competences_web/helpers/colorchart.dart'
    show workExperienceButtonPalette;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show carouselController, carouselIndex;
import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/utils.dart';

class EmployerHeader extends StatefulWidget implements PreferredSizeWidget {
  static const int indexMinPrastelContent = 1;
  static const int indexMinAmiltoneContent = 4;
  static const int indexMinEvolucareContent = 9;
  final String employerLogoAssetPath;

  const EmployerHeader({required this.employerLogoAssetPath, super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<EmployerHeader> createState() => _EmployerHeaderState();
}

class _EmployerHeaderState extends State<EmployerHeader> {
  late bool isTablet, isPhoneScreen, isFoldable, isPortrait;
  late double marginContainer,
      paddingHorizontalListView,
      paddingVerticalListView,
      employerNavigationIconSize;

  @override
  void initState() {
    super.initState();
    isPortrait = Utils.isPortraitOrientation();
    isTablet = Utils.isTabletView();
    isPhoneScreen = Utils.isPhoneView();
    isFoldable = Utils.isFoldableView();
  }

  @override
  void didChangeDependencies() {
    isPortrait = Utils.isPortraitContext(context);
    isTablet = Utils.isTabletScreen(context);
    isPhoneScreen = Utils.isPhoneScreen(context);
    isFoldable = Utils.isFoldable(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (isPortrait) {
      if (isPhoneScreen) {
        marginContainer = paddingHorizontalListView = 15.0;
        paddingVerticalListView = 25.0;
        employerNavigationIconSize = 20.0;
      } else if (isFoldable) {
        marginContainer = employerNavigationIconSize = 15.0;
        paddingHorizontalListView = paddingVerticalListView = 20.0;
      } else if (isTablet) {
        employerNavigationIconSize = 25.0;
        marginContainer =
            paddingHorizontalListView = paddingVerticalListView = 15.0;
      } else {
        employerNavigationIconSize = 30.0;
        marginContainer =
            paddingHorizontalListView = paddingVerticalListView = 15.0;
      }
    } else {
      if (isPhoneScreen || isFoldable) {
        employerNavigationIconSize = 20.0;
        marginContainer =
            paddingHorizontalListView = paddingVerticalListView = 10.0;
      } else {
        employerNavigationIconSize = 30.0;
        marginContainer =
            paddingHorizontalListView = paddingVerticalListView = 10.0;
        paddingVerticalListView = 25.0;
      }
    }

    String imagePath = widget.employerLogoAssetPath;

    return ValueListenableBuilder(
        valueListenable: carouselIndex,
        builder: (context, value, widget) {
          return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, marginContainer, 0, 0),
                    child: IconButton(
                      color: workExperienceButtonPalette.icon,
                      hoverColor: workExperienceButtonPalette.radientStop2,
                      disabledColor: workExperienceButtonPalette.iconFocus,
                      iconSize: constraints.maxWidth * 0.08,
                      onPressed: carouselIndex.value == 0
                          ? null
                          : () {
                              int pageNumber = 0;
                              if (carouselIndex.value <=
                                  EmployerHeader.indexMinPrastelContent) {
                                pageNumber = 0;
                              } else if (carouselIndex.value <=
                                  EmployerHeader.indexMinAmiltoneContent) {
                                pageNumber =
                                    EmployerHeader.indexMinPrastelContent;
                              } else if (carouselIndex.value <=
                                  EmployerHeader.indexMinEvolucareContent) {
                                pageNumber =
                                    EmployerHeader.indexMinAmiltoneContent;
                              } else {
                                pageNumber =
                                    EmployerHeader.indexMinEvolucareContent;
                              }
                              carouselController.jumpToPage(pageNumber);
                            },
                      icon: Icon(Icons.arrow_circle_left_rounded),
                    )),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(constraints.maxWidth * 0.005,
                        marginContainer, constraints.maxWidth * 0.005, 0),
                    child: Image(
                        width: constraints.maxWidth * 0.6,
                        image: AssetImage(imagePath))),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, marginContainer, 0, 0),
                    child: IconButton(
                      color: workExperienceButtonPalette.icon,
                      hoverColor: workExperienceButtonPalette.radientStop2,
                      disabledColor: workExperienceButtonPalette.iconFocus,
                      iconSize: constraints.maxWidth * 0.08,
                      onPressed: carouselIndex.value > 7
                          ? null
                          : () {
                              int pageNumber = carouselIndex.value <
                                      EmployerHeader.indexMinPrastelContent
                                  ? EmployerHeader.indexMinPrastelContent
                                  : carouselIndex.value <
                                          EmployerHeader.indexMinAmiltoneContent
                                      ? EmployerHeader.indexMinAmiltoneContent
                                      : EmployerHeader.indexMinEvolucareContent;
                              carouselController.jumpToPage(pageNumber);
                            },
                      icon: Icon(Icons.arrow_circle_right_rounded),
                    )),
              ],
            );
          });
        });
  }
}
