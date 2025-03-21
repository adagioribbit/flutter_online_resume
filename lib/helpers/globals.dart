import 'dart:ui' show PlatformDispatcher;

import 'package:carousel_slider/carousel_controller.dart'
    show CarouselSliderController;
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart'
    show ItemScrollController;


ValueNotifier<String> appLanguage = ValueNotifier<String>(
    (PlatformDispatcher.instance.locale.toString().substring(0, 2) != 'fr'
        ? 'en'
        : 'fr'));
ValueNotifier<bool> isDarkMode = ValueNotifier<bool>(false);
ValueNotifier<bool> isFoldable = ValueNotifier<bool>(false);
ValueNotifier<bool> isVisibleSkillListFilters = ValueNotifier<bool>(false);

CarouselSliderController carouselController = CarouselSliderController();
ScrollController educationContentScrollController = ScrollController();
ScrollController workExperienceContentScrollController = ScrollController();
ItemScrollController skillListScrollController = ItemScrollController();
ValueNotifier<int> carouselIndex = ValueNotifier<int>(0);
ValueNotifier<SkillKey> initialScrollSkillItem =
    ValueNotifier<SkillKey>(SkillKey.none);

enum ToolbarMenu { none, btnEducation, btnSkillsSet, btnWorkExperience }

enum SkillKey {
  none,
  gaugeAccess,
  gaugeAndroid,
  gaugeAndroidStudio,
  gaugeAngular,
  gaugeApacheServer,
  gaugeAppstore,
  gaugeBash,
  gaugeBlender,
  gaugeBluetooth,
  gaugeBootstrap,
  gaugeChrome,
  gaugeColaboratory,
  gaugeConfluence,
  gaugeCordova,
  gaugeCplusplus,
  gaugeCsharp,
  gaugeCss3,
  gaugeDart,
  gaugeDbeaver,
  gaugeDebian,
  gaugeDocker,
  gaugeUkFlag,
  gaugeExcel,
  gaugeFastapi,
  gaugeFlutter,
  gaugeGit,
  gaugeGithub,
  gaugeGitlab,
  gaugeGoogleDocs,
  gaugeGooglePlay,
  gaugeGradle,
  gaugeHtml5,
  gaugeHuggingface,
  gaugeIos,
  gaugeJava,
  gaugeJavascript,
  gaugeJira,
  gaugeJquery,
  gaugeJson,
  gaugeJupyter,
  gaugeKaggle,
  gaugeKeras,
  gaugeLerobert,
  gaugeMacos,
  gaugeMailchimp,
  gaugeMariadb,
  gaugeMatplotlib,
  gaugeMysql,
  gaugeNetbeans,
  gaugeNetMaui,
  gaugeNpm,
  gaugeObjectivec,
  gaugePandas,
  gaugePhp,
  gaugePhpmyadmin,
  gaugePhpstorm,
  gaugePowerbi,
  gaugePowershell,
  gaugePowerQuery,
  gaugePython,
  gaugeQt,
  gaugeReact,
  gaugeSafari,
  gaugeSeaborn,
  gaugeSharepoint,
  gaugeSlack,
  gaugeSql,
  gaugeSqlserver,
  gaugeSqlite,
  gaugeTensorflow,
  gaugeThingsboard,
  gaugeTomcat,
  gaugeTrello,
  gaugeUml,
  gaugeVisualStudio2022,
  gaugeVscode,
  gaugeVmwareWorkstation,
  gaugeWikipedia,
  gaugeWindows,
  gaugeWindowsserver,
  gaugeWordpress,
  gaugeWso2,
  gaugeXamarin,
  gaugeXcode,
  gaugeXml,
}

enum SkillUsage {
  webDevelopment,
  mobileDevelopment,
  businessIntelligence,
  artificielIntelligence,
  backend,
  devops,
  teamWork,
  other,
}

enum SkillType {
  language,
  tool,
}

class GlobalKeyRing {
  static GlobalKey bubbleCarousel = GlobalKey();

  static Map<ToolbarMenu, GlobalKey<State<StatefulWidget>>> toolbar =
      <ToolbarMenu, GlobalKey<State<StatefulWidget>>>{
    ToolbarMenu.btnEducation: GlobalKey(),
    ToolbarMenu.btnSkillsSet: GlobalKey(),
    ToolbarMenu.btnWorkExperience: GlobalKey()
  };
}
