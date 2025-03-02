import 'package:carousel_slider/carousel_controller.dart'
    show CarouselSliderController;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_list_item.dart'
    show SkillListItem;
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart'
    show ItemScrollController;

ValueNotifier<String> appLanguage = ValueNotifier<String>('fr');
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);
ValueNotifier<bool> isFoldable = ValueNotifier<bool>(false);

CarouselSliderController carouselController = CarouselSliderController();
ScrollController bubbleContentScrollController = ScrollController();
ItemScrollController skillListScrollController = ItemScrollController();
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
  static GlobalKey pythonGauge = GlobalKey();
  static GlobalKey skillList = GlobalKey();
}