import 'package:carousel_slider/carousel_controller.dart'
    show CarouselSliderController;
import 'package:flutter/material.dart';

ValueNotifier<String> appLanguage = ValueNotifier<String>('fr');
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);
ValueNotifier<bool> isFoldable = ValueNotifier<bool>(false);

CarouselSliderController carouselController = CarouselSliderController();
ValueNotifier<int> carouselIndex = ValueNotifier<int>(0);

class GlobalKeyRing {
  static Map<String, GlobalKey<State<StatefulWidget>>> key =
      <String, GlobalKey<State<StatefulWidget>>>{
    "btnEducation": GlobalKey(),
    "btnSkillsSet": GlobalKey(),
    "btnWorkExperience": GlobalKey()
  };
}
