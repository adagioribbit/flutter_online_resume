import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Constants {
  static const double APPBAR_HEIGHT = 75.0;
  static const double SOCIAL_BUTTON_HEIGHT = APPBAR_HEIGHT * 0.6;
  static const double SOCIAL_BUTTON_HEIGHT_FOLDABLE = APPBAR_HEIGHT * 0.5;
  static const double WIGGLING_BUTTON_HEIGHT = APPBAR_HEIGHT * 0.68;
  static const double WIGGLING_BUTTON_HEIGHT_FOLDABLE = WIGGLING_BUTTON_HEIGHT;
  static const double WIGGLING_BUTTON_HEIGHT_SHRUNK =
      WIGGLING_BUTTON_HEIGHT * .7;
  static const BoxConstraints TOOLBAR_ACTIONS_BOXCONTRAINTS = BoxConstraints(
    minHeight: SOCIAL_BUTTON_HEIGHT,
    maxHeight: SOCIAL_BUTTON_HEIGHT,
    minWidth: SOCIAL_BUTTON_HEIGHT,
    maxWidth: SOCIAL_BUTTON_HEIGHT,
  );
  static const BoxConstraints TOOLBAR_ACTIONS_BOXCONTRAINTS_FOLDABLE =
      BoxConstraints(
    minHeight: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
    maxHeight: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
    minWidth: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
    maxWidth: SOCIAL_BUTTON_HEIGHT_FOLDABLE,
  );
  static const int HEADER_ANIMATION_DURATION = 250;
  static const int WIGGLING_BUTTON_ANIMATION_DURATION = 50;
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
  static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
    true: 'lib/assets/clair.png',
    false: 'lib/assets/sombre.png',
  };
  //static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
  //  true: 'lib/assets/diurne.png',
  //  false: 'lib/assets/nocturne.png',
  //};
  //static const Map<bool, String> DARK_MODE_IMAGE_PATH = {
  //  true: 'lib/assets/soleil.png',
  //  false: 'lib/assets/lune.png',
  //};
  static const String APP_TITLE = 'Benjamin Israël';
  static const Map<bool, Map<String, String>> DARK_MODE_TOOLTIP = {
    true: {
      'fr': 'Mode clair',
      'en': 'Light mode',
    },
    false: {
      'fr': 'Mode sombre',
      'en': 'Dark mode',
    },
  };
  static const Map<String, String> LANGUAGE_SWITCH_TOOLTIP = {
    'fr': 'Switch to english',
    'en': 'Afficher en français',
  };
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
