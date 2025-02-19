/* Classe adaptée de https://github.com/ominibyte/flutter_device_type/blob/master/lib/flutter_device_type.dart (sous licence MIT) */
import 'dart:io' show Platform;
import 'dart:ui';
import 'dart:math' show sqrt, pow;

import 'package:flutter/material.dart' show WidgetsBinding;

class DeviceInfo {
  static FlutterView view =
      WidgetsBinding.instance.platformDispatcher.views.first;
  static double devicePixelRatio = view.devicePixelRatio;
  static Size size = view.physicalSize;
  static double width = size.width;
  static double height = size.height;
  static double screenWidth = width / devicePixelRatio;
  static double screenHeight = height / devicePixelRatio;
  static Size screenSize = Size(screenWidth, screenHeight);
  final bool isTablet, isPhone, isIos, isAndroid, isIphoneX, hasNotch;
  static DeviceInfo? _device;
  static Function? onMetricsChange;

  DeviceInfo(
      {required this.isTablet,
      required this.isPhone,
      required this.isIos,
      required this.isAndroid,
      required this.isIphoneX,
      required this.hasNotch});

  factory DeviceInfo.get() {
    if (_device != null) return _device!;

    bool isTablet;
    bool isPhone;
    bool isIos = Platform.operatingSystem == "ios";
    bool isAndroid = Platform.operatingSystem == "android";
    bool isIphoneX = false;
    bool hasNotch = false;

    if (devicePixelRatio < 2 && (width >= 1000 || height >= 1000)) {
      isTablet = true;
      isPhone = false;
    } else if (devicePixelRatio == 2 && (width >= 1920 || height >= 1920)) {
      isTablet = true;
      isPhone = false;
    } else {
      isTablet = false;
      isPhone = true;
    }

    // Recalculate for Android Tablet using device inches
    if (isAndroid) {
      final adjustedWidth = _calWidth() / devicePixelRatio;
      final adjustedHeight = _calHeight() / devicePixelRatio;
      final diagonalSizeInches =
          (sqrt(pow(adjustedWidth, 2) + pow(adjustedHeight, 2))) / _ppi;

      if (diagonalSizeInches >= 7) {
        isTablet = true;
        isPhone = false;
      } else {
        isTablet = false;
        isPhone = true;
      }
    }

    if (isIos &&
        isPhone &&
        (screenHeight == 812 ||
            screenWidth == 812 ||
            screenHeight == 896 ||
            screenWidth == 896 ||
            // iPhone 12 pro
            screenHeight == 844 ||
            screenWidth == 844 ||
            // Iphone 12 pro max
            screenHeight == 926 ||
            screenWidth == 926)) {
      isIphoneX = true;
      hasNotch = true;
    }

    if (_hasTopOrBottomPadding()) hasNotch = true;

    return _device = DeviceInfo(
        isTablet: isTablet,
        isPhone: isPhone,
        isAndroid: isAndroid,
        isIos: isIos,
        isIphoneX: isIphoneX,
        hasNotch: hasNotch);
  }

  static double _calWidth() {
    if (width > height) {
      return (width +
          (view.viewPadding.left + view.viewPadding.right) * width / height);
    }
    return (width + view.viewPadding.left + view.viewPadding.right);
  }

  static double _calHeight() {
    return (height + (view.viewPadding.top + view.viewPadding.bottom));
  }

  static int get _ppi => Platform.operatingSystem == "android"
      ? 160
      : Platform.operatingSystem == "i"
          ? 150
          : 96;

  static bool _hasTopOrBottomPadding() {
    final padding = view.viewPadding;
    return padding.top > 0 || padding.bottom > 0;
  }
}
