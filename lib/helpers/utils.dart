import 'package:flutter/widgets.dart';

class Utils {
  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1366;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 768 &&
        MediaQuery.of(context).size.width < 1366;
  }

  static bool isPhoneScreen(BuildContext context) {
    bool isPhoneScreen = MediaQuery.of(context).size.width < 768 &&
        MediaQuery.of(context).size.width >= 360;
    return isPhoneScreen;
  }

  static bool isFoldable(BuildContext context) {
    bool isFoldable = MediaQuery.of(context).size.width < 360;
    return isFoldable;
  }
}
