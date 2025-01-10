import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Constants {
  static const double APPBAR_HEIGHT = 75.0;
  static const double SOCIAL_BUTTON_HEIGHT = APPBAR_HEIGHT - 25.0;
  static const double WIGGLING_BUTTON_HEIGHT_SHRUNK = SOCIAL_BUTTON_HEIGHT * .9;
  static const BoxConstraints TOOLBAR_ACTIONS_BOXCONTRAINTS = BoxConstraints(
    minHeight: SOCIAL_BUTTON_HEIGHT,
    maxHeight: SOCIAL_BUTTON_HEIGHT,
    minWidth: SOCIAL_BUTTON_HEIGHT,
    maxWidth: SOCIAL_BUTTON_HEIGHT,
  );
}

class AppStrings {
  static const String LINKEDIN_URL =
      "https://www.linkedin.com/in/benjamin-isra%C3%ABl-247b26124/";
  static const String GITHUB_URL = "https://github.com/adagioribbit";
  static const String INSTAGRAM_URL = "https://www.instagram.com/ben.7994";
  static const Map<String, String> LANGUAGE_SWITCH_IMAGE_PATH = {
    'fr': 'lib/assets/french_flag.png',
    'en': 'lib/assets/uk_flag.png',
  };
  static const Map<String, String> LANGUAGE_SWITCH_TOOLTIP = {
    'fr': 'Switch to english',
    'en': 'Afficher en français',
  };
  static const String APP_TITLE = 'Benjamin Israël';
  static const Map<String, String> APP_SUBTITLE = {
    'fr': 'Analyste développeur',
    'en': 'Software developer',
  };
  static const Map<String, String> LINKEDIN_TOOLTIP = {
    'fr': 'Me contacter sur LinkedIn',
    'en': 'Contact me on LinkedIn',
  };
  static const Map<String, String> GITHUB_TOOLTIP = {
    'fr': 'Mon GitHub',
    'en': 'My GitHub'
  };
  static const Map<String, String> INSTAGRAM_TOOLTIP = {
    'fr': 'Mon Insta',
    'en': 'My gram'
  };
}
