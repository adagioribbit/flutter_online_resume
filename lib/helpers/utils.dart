import 'dart:ui' show DisplayFeature, DisplayFeatureType, FlutterView;

import 'package:flutter/widgets.dart';
import 'package:web/web.dart';

import 'flutter_device_type.dart';

enum WebBrower { Chrome, Safari, Firefox, Edge, IE, Opera, Other }

enum Platform { Linux, Windows, MacOS, Android, iOS, Other }

class Utils {
  static FlutterView view =
      WidgetsBinding.instance.platformDispatcher.views.first;
  static double devicePixelRatio = view.devicePixelRatio;
  static Size size = view.physicalSize;
  static List<DisplayFeature> features = view.displayFeatures;
  static double width = size.width;
  static double height = size.height;
  static double screenWidth = width / devicePixelRatio;
  static double screenHeight = height / devicePixelRatio;
  static Size screenSize = Size(screenWidth, screenHeight);

  static WebBrower getWebBrowser(BuildContext context) {
    if (Device.userAgent.contains('Chrome') ||
        Device.userAgent.contains('CriOS')) {
      return WebBrower.Chrome;
    }
    if (Device.userAgent.contains('AppleWebKit')) return WebBrower.Safari;
    if (Device.userAgent.contains('Gecko')) return WebBrower.Firefox;
    if (Device.userAgent.contains('Edg')) return WebBrower.Edge;
    if (Device.userAgent.contains('Trident')) return WebBrower.IE;
    if (Device.userAgent.contains('OPR')) return WebBrower.Opera;
    return WebBrower.Other;
  }

  static Platform getOS(BuildContext context) {
    if (Device.userAgent.contains('X11')) return Platform.Linux;
    if (Device.userAgent.contains('Windows')) return Platform.Windows;
    if (Device.userAgent.contains('Macintosh')) return Platform.MacOS;
    if (Device.userAgent.contains('Android')) return Platform.Android;
    if (Device.userAgent.contains('iPhone') ||
        Device.userAgent.contains('iPad') ||
        Device.userAgent.contains('iPod')) {
      return Platform.iOS;
    }
    return Platform.Other;
  }

  static Size getScreenSize() {
    return WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
  }

  static bool isPortraitOrientation() {
    Size screenSize = getScreenSize();
    bool isPortrait = screenSize.height >= screenSize.width;
    return isPortrait;
  }

  static bool isPortraitContext(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static double getWidthOverHeightRatio() {
    return screenWidth / screenHeight;
  }

  static bool isTabletScreen(BuildContext context) {
    double widthOverHeightRatio = getWidthOverHeightRatio();
    bool isPortrait = isPortraitContext(context);
    return (isPortrait &&
            widthOverHeightRatio > 0.56 &&
            widthOverHeightRatio < 0.75) ||
        (!isPortrait &&
            widthOverHeightRatio > 1.77 &&
            widthOverHeightRatio < 2.22);
  }

  static bool isPhoneScreen(BuildContext context) {
    double widthOverHeightRatio = getWidthOverHeightRatio();
    bool isPortrait = isPortraitContext(context);
    return (isPortrait &&
            widthOverHeightRatio > 0.45 &&
            widthOverHeightRatio < 0.56) ||
        (!isPortrait &&
            widthOverHeightRatio > 1.77 &&
            widthOverHeightRatio < 2.22);
  }

  static bool hasNotch() {
    return features
        .where((feature) => feature.type == DisplayFeatureType.hinge)
        .isNotEmpty;
  }

  static bool hasHinge() {
    return features
        .where((feature) => feature.type == DisplayFeatureType.cutout)
        .isNotEmpty;
  }

  static bool isFoldable(BuildContext context) {
    double widthOverHeightRatio = getWidthOverHeightRatio();
    bool isPortrait = isPortraitContext(context);
    return (isPortrait && widthOverHeightRatio < 0.45) ||
        (!isPortrait && widthOverHeightRatio > 2.22);
  }
}
