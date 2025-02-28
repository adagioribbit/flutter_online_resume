import 'package:carousel_slider/carousel_controller.dart'
    show CarouselSliderController;
import 'package:flutter/material.dart';

ValueNotifier<String> appLanguage = ValueNotifier<String>('fr');
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);
ValueNotifier<bool> isFoldable = ValueNotifier<bool>(false);

CarouselSliderController carouselController = CarouselSliderController();
ScrollController bubbleContentScrollController = ScrollController();
ValueNotifier<int> carouselIndex = ValueNotifier<int>(0);

enum ToolbarMenu { None, btnEducation, btnSkillsSet, btnWorkExperience }

class GlobalKeyRing {
  static Map<ToolbarMenu, GlobalKey<State<StatefulWidget>>> toolbar =
      <ToolbarMenu, GlobalKey<State<StatefulWidget>>>{
    ToolbarMenu.btnEducation: GlobalKey(),
    ToolbarMenu.btnSkillsSet: GlobalKey(),
    ToolbarMenu.btnWorkExperience: GlobalKey()
  };
  static GlobalKey bubbleCarousel = GlobalKey();
}
