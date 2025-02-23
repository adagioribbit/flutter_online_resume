import 'dart:math' show pow, sqrt;
import 'dart:ui' show DisplayFeature, DisplayFeatureType, FlutterView;
import 'dart:io' show Platform;

import 'package:flutter/widgets.dart';
import 'package:web/web.dart';

// ignore: constant_identifier_names
enum WebBrower { Chrome, Safari, Firefox, Edge, IE, Opera, Other }

// ignore: constant_identifier_names
enum OS { Linux, Windows, MacOS, Android, iOS, Other }

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

  static OS getOS(BuildContext context) {
    if (Device.userAgent.contains('X11')) return OS.Linux;
    if (Device.userAgent.contains('Windows')) return OS.Windows;
    if (Device.userAgent.contains('Macintosh')) return OS.MacOS;
    if (Device.userAgent.contains('Android')) return OS.Android;
    if (Device.userAgent.contains('iPhone') ||
        Device.userAgent.contains('iPad') ||
        Device.userAgent.contains('iPod')) {
      return OS.iOS;
    }
    return OS.Other;
  }

  static OS getPlatformOS() {
    if (Platform.operatingSystem == "linux") return OS.Linux;
    if (Platform.operatingSystem == "windows") return OS.Windows;
    if (Platform.operatingSystem == "macos") return OS.MacOS;
    if (Platform.operatingSystem == "android") return OS.Android;
    if (Platform.operatingSystem == "ios") return OS.iOS;
    return OS.Other;
  }

  static updateViewData() {
    view = WidgetsBinding.instance.platformDispatcher.views.first;
    devicePixelRatio = view.devicePixelRatio;
    features = view.displayFeatures;

    size = getScreenSize();
    width = size.width;
    height = size.height;
    screenWidth = width / devicePixelRatio;
    screenHeight = height / devicePixelRatio;
    screenSize = Size(screenWidth, screenHeight);
  }

  static bool isTabletView() {
    updateViewData();
    bool isTablet =
        (devicePixelRatio < 2 && (width >= 1000 || height >= 1000)) ||
            (devicePixelRatio == 2 && (width >= 1920 || height >= 1920));
    return isTablet;
  }

  static bool isPhoneView() {
    updateViewData();
    bool isPhone = !isTabletView();
    return isPhone;
  }

  static bool isFoldableView() {
    updateViewData();
    double widthOverHeightRatio = getWidthOverHeightRatio();
    bool isPortrait = isPortraitOrientation();
    bool isFoldable = (isPortrait && widthOverHeightRatio < 0.45) ||
        (!isPortrait && width < 890 && widthOverHeightRatio > 2.22);
    return isFoldable;
  }

  static Size getScreenSize() {
    return WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
  }

  static Size getContextSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static bool isPortraitOrientation() {
    Size screenSize = getScreenSize();
    bool isPortrait = screenSize.height >= screenSize.width;
    return isPortrait;
  }

  static bool isPortraitContext(BuildContext context) {
    updateScreenData(context);
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static double getWidthOverHeightRatio() {
    return screenWidth / screenHeight;
  }

  static bool isTabletScreen(BuildContext context) {
    updateScreenData(context);
    double widthOverHeightRatio = getWidthOverHeightRatio();
    bool isPortrait = isPortraitContext(context);
    OS os = getOS(context);
    int ppi = os == OS.Android
        ? 160
        : os == OS.iOS
            ? 150
            : 96;
    double diagonalSizeInches =
        (sqrt(pow(screenWidth, 2) + pow(screenHeight, 2))) / ppi;

    bool isTablet = diagonalSizeInches >= 7 &&
        ((isPortrait &&
                widthOverHeightRatio > 0.57 &&
                widthOverHeightRatio < 0.75) ||
            (!isPortrait &&
                widthOverHeightRatio > 1.77 &&
                widthOverHeightRatio < 2.22));
    return isTablet;
  }

  static bool isPhoneScreen(BuildContext context) {
    updateScreenData(context);
    double widthOverHeightRatio = getWidthOverHeightRatio();
    bool isPortrait = isPortraitContext(context);
    bool isPhone = (isPortrait &&
            widthOverHeightRatio > 0.45 &&
            widthOverHeightRatio < 0.57) ||
        (!isPortrait &&
            screenWidth <= 915 &&
            widthOverHeightRatio > 1.77 &&
            widthOverHeightRatio < 2.22);
    return isPhone;
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
    updateScreenData(context);
    double widthOverHeightRatio = getWidthOverHeightRatio();
    bool isPortrait = isPortraitContext(context);
    bool isFoldable = (isPortrait && widthOverHeightRatio < 0.45) ||
        (!isPortrait && widthOverHeightRatio > 2.22);
    return isFoldable;
  }

  static updateScreenData(BuildContext context) {
    view = WidgetsBinding.instance.platformDispatcher.views.first;
    devicePixelRatio = view.devicePixelRatio;
    features = view.displayFeatures;

    size = getContextSize(context);
    width = size.width;
    height = size.height;
    screenWidth = width / devicePixelRatio;
    screenHeight = height / devicePixelRatio;
    screenSize = Size(screenWidth, screenHeight);
  }
}
