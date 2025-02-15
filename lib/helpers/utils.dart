import 'package:flutter/widgets.dart';

class Utils {
  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1366;
  }

  static bool isTabletScreen(BuildContext context) {
    double widthOverHeightRatio = (MediaQuery.of(context).size.width /
        MediaQuery.of(context).size.height);
    return MediaQuery.of(context).size.width >= 768 &&
        MediaQuery.of(context).size.width < 1366 &&
        widthOverHeightRatio > 0.6;
  }

  static bool isPhoneScreen(BuildContext context) {
    double widthOverHeightRatio = (MediaQuery.of(context).size.width /
        MediaQuery.of(context).size.height);
    bool isPhoneScreen = MediaQuery.of(context).size.width < 768 &&
        MediaQuery.of(context).size.width >= 360 &&
        widthOverHeightRatio < 0.6;
    return isPhoneScreen;
  }

  static bool isFoldable(BuildContext context) {
    double widthOverHeightRatio = (MediaQuery.of(context).size.width /
        MediaQuery.of(context).size.height);
    bool isFoldable =
        MediaQuery.of(context).size.width < 360 && widthOverHeightRatio < 0.4;
    return isFoldable;
  }
}
