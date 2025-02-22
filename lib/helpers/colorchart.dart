import 'package:flutter/widgets.dart';

class ColorChart {
  /// APPBAR
  static const appBackground = Color.fromARGB(255, 249, 247, 255);
  static const appBarBackground = Color.fromARGB(255, 249, 247, 255);
  static const appBarBackgroundFaded = Color.fromARGB(255, 46, 41, 59);
  static const appBarShadow = Color.fromARGB(255, 202, 202, 202);
  static const appBarTitleText = Color.fromARGB(255, 22, 45, 80);
  static const appBarTitleTextFaded = Color.fromARGB(255, 182, 182, 182);
  static const appBarButtonPlusShadow = Color.fromARGB(255, 182, 182, 182);
  static const appBarButtonPlusBackground = Color.fromARGB(255, 130, 148, 179);
  static const appBarButtonPlusBackgroundHovered =
      Color.fromARGB(255, 79, 98, 128);
  static const appBarButtonPlusBackgroundPressed =
      Color.fromARGB(255, 79, 98, 128);

  /// SOCIAL MEDIA BUTTONS
  static const linkedInButtonShadowHovered = Color.fromARGB(155, 103, 156, 180);
  static const githubButtonShadowHovered = Color.fromARGB(155, 180, 179, 179);
  static const instagralButtonShadowHovered =
      Color.fromARGB(155, 233, 163, 199);

  /// MANILLA FOLDER
  static const folderMainColor = Color.fromARGB(255, 206, 184, 143);
  static const stickerLabelColor = Color.fromARGB(255, 241, 242, 232);
  static const folderBackBoxShadowColor = Color.fromARGB(109, 0, 0, 0);
  static const folderCoverBoxShadowColor = Color.fromARGB(98, 75, 75, 75);

  /// TOOLBAR
  static const toolbarBorder = Color.fromARGB(143, 202, 202, 202);
  static const toolbarBoxShadow = Color.fromARGB(151, 196, 196, 196);
}

class ToolbarButtonPalette {
  final Color radientStop1;
  final Color radientStop2;
  final Color radientStop3;
  final Color border;
  final Color icon;
  final Color iconFocus;
  final Color iconHover;
  final Color iconHighlight;

  const ToolbarButtonPalette(
      {required this.radientStop1,
      required this.radientStop2,
      required this.radientStop3,
      required this.border,
      required this.icon,
      required this.iconFocus,
      required this.iconHover,
      required this.iconHighlight});
}

/// TOOLBAR BUTTONS
const educationButtonPalette = ToolbarButtonPalette(
    radientStop1: Color.fromARGB(171, 194, 236, 139),
    radientStop2: Color.fromARGB(99, 194, 236, 139),
    radientStop3: Color.fromARGB(184, 194, 236, 139),
    border: Color.fromARGB(255, 194, 236, 139),
    icon: Color.fromARGB(255, 98, 173, 0),
    iconFocus: Color.fromARGB(216, 204, 226, 175),
    iconHover: Color.fromARGB(184, 204, 226, 175),
    iconHighlight: Color.fromARGB(255, 167, 236, 75));
const skillsSetButtonPalette = ToolbarButtonPalette(
    radientStop1: Color.fromARGB(171, 233, 190, 134),
    radientStop2: Color.fromARGB(99, 233, 190, 134),
    radientStop3: Color.fromARGB(184, 233, 190, 134),
    border: Color.fromARGB(255, 233, 190, 134),
    icon: Color.fromARGB(255, 185, 105, 0),
    iconFocus: Color.fromARGB(215, 226, 204, 175),
    iconHover: Color.fromARGB(184, 226, 204, 175),
    iconHighlight: Color.fromARGB(255, 233, 169, 85));
const workExperienceButtonPalette = ToolbarButtonPalette(
    radientStop1: Color.fromARGB(171, 201, 201, 201),
    radientStop2: Color.fromARGB(99, 120, 208, 235),
    radientStop3: Color.fromARGB(184, 120, 208, 235),
    border: Color.fromARGB(242, 120, 208, 235),
    icon: Color.fromARGB(255, 0, 137, 179),
    iconFocus: Color.fromARGB(214, 175, 214, 226),
    iconHover: Color.fromARGB(184, 175, 214, 226),
    iconHighlight: Color.fromARGB(241, 74, 193, 230));
