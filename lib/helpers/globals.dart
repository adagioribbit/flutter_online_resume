import 'package:flutter/material.dart';

ValueNotifier<String> appLanguage = ValueNotifier<String>('fr');
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);
ValueNotifier<bool> isFoldable = ValueNotifier<bool>(false);

class GlobalKeyRing {
  static Map<String, GlobalKey<State<StatefulWidget>>> key =
      <String, GlobalKey<State<StatefulWidget>>>{
    "btnEducation": GlobalKey(),
    "btnSkillsSet": GlobalKey(),
    "btnWorkExperience": GlobalKey()
  };
}
