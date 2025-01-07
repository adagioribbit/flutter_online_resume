import 'package:flutter/widgets.dart';

class Utils {
  static bool isDesktopScreen(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return MediaQuery.of(context).size.width >= 1366;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 768 &&
        MediaQuery.of(context).size.width < 1366;
  }

  static bool isPhoneScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }
}
