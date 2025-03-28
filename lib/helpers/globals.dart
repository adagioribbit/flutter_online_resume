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

  static Map<SkillKey, GlobalKey<State<StatefulWidget>>> skills =
      <SkillKey, GlobalKey<State<StatefulWidget>>>{
    SkillKey.none: GlobalKey(),
    SkillKey.gaugeAccess: GlobalKey(),
    SkillKey.gaugeAndroid: GlobalKey(),
    SkillKey.gaugeAndroidStudio: GlobalKey(),
    SkillKey.gaugeAngular: GlobalKey(),
    SkillKey.gaugeApacheServer: GlobalKey(),
    SkillKey.gaugeAppstore: GlobalKey(),
    SkillKey.gaugeBash: GlobalKey(),
    SkillKey.gaugeBlender: GlobalKey(),
    SkillKey.gaugeBluetooth: GlobalKey(),
    SkillKey.gaugeBootstrap: GlobalKey(),
    SkillKey.gaugeChrome: GlobalKey(),
    SkillKey.gaugeColaboratory: GlobalKey(),
    SkillKey.gaugeConfluence: GlobalKey(),
    SkillKey.gaugeCordova: GlobalKey(),
    SkillKey.gaugeCplusplus: GlobalKey(),
    SkillKey.gaugeCsharp: GlobalKey(),
    SkillKey.gaugeCss3: GlobalKey(),
    SkillKey.gaugeDart: GlobalKey(),
    SkillKey.gaugeDbeaver: GlobalKey(),
    SkillKey.gaugeDebian: GlobalKey(),
    SkillKey.gaugeDocker: GlobalKey(),
    SkillKey.gaugeUkFlag: GlobalKey(),
    SkillKey.gaugeExcel: GlobalKey(),
    SkillKey.gaugeFastapi: GlobalKey(),
    SkillKey.gaugeFlutter: GlobalKey(),
    SkillKey.gaugeGit: GlobalKey(),
    SkillKey.gaugeGithub: GlobalKey(),
    SkillKey.gaugeGitlab: GlobalKey(),
    SkillKey.gaugeGoogleDocs: GlobalKey(),
    SkillKey.gaugeGooglePlay: GlobalKey(),
    SkillKey.gaugeGradle: GlobalKey(),
    SkillKey.gaugeHtml5: GlobalKey(),
    SkillKey.gaugeHuggingface: GlobalKey(),
    SkillKey.gaugeIos: GlobalKey(),
    SkillKey.gaugeJava: GlobalKey(),
    SkillKey.gaugeJavascript: GlobalKey(),
    SkillKey.gaugeJira: GlobalKey(),
    SkillKey.gaugeJquery: GlobalKey(),
    SkillKey.gaugeJson: GlobalKey(),
    SkillKey.gaugeJupyter: GlobalKey(),
    SkillKey.gaugeKaggle: GlobalKey(),
    SkillKey.gaugeKeras: GlobalKey(),
    SkillKey.gaugeLerobert: GlobalKey(),
    SkillKey.gaugeMacos: GlobalKey(),
    SkillKey.gaugeMailchimp: GlobalKey(),
    SkillKey.gaugeMariadb: GlobalKey(),
    SkillKey.gaugeMatplotlib: GlobalKey(),
    SkillKey.gaugeMysql: GlobalKey(),
    SkillKey.gaugeNetbeans: GlobalKey(),
    SkillKey.gaugeNetMaui: GlobalKey(),
    SkillKey.gaugeNpm: GlobalKey(),
    SkillKey.gaugeObjectivec: GlobalKey(),
    SkillKey.gaugePandas: GlobalKey(),
    SkillKey.gaugePhp: GlobalKey(),
    SkillKey.gaugePhpmyadmin: GlobalKey(),
    SkillKey.gaugePhpstorm: GlobalKey(),
    SkillKey.gaugePowerbi: GlobalKey(),
    SkillKey.gaugePowershell: GlobalKey(),
    SkillKey.gaugePowerQuery: GlobalKey(),
    SkillKey.gaugePython: GlobalKey(),
    SkillKey.gaugeQt: GlobalKey(),
    SkillKey.gaugeReact: GlobalKey(),
    SkillKey.gaugeSafari: GlobalKey(),
    SkillKey.gaugeSeaborn: GlobalKey(),
    SkillKey.gaugeSharepoint: GlobalKey(),
    SkillKey.gaugeSlack: GlobalKey(),
    SkillKey.gaugeSql: GlobalKey(),
    SkillKey.gaugeSqlserver: GlobalKey(),
    SkillKey.gaugeSqlite: GlobalKey(),
    SkillKey.gaugeTensorflow: GlobalKey(),
    SkillKey.gaugeThingsboard: GlobalKey(),
    SkillKey.gaugeTomcat: GlobalKey(),
    SkillKey.gaugeTrello: GlobalKey(),
    SkillKey.gaugeUml: GlobalKey(),
    SkillKey.gaugeVisualStudio2022: GlobalKey(),
    SkillKey.gaugeVscode: GlobalKey(),
    SkillKey.gaugeVmwareWorkstation: GlobalKey(),
    SkillKey.gaugeWikipedia: GlobalKey(),
    SkillKey.gaugeWindows: GlobalKey(),
    SkillKey.gaugeWindowsserver: GlobalKey(),
    SkillKey.gaugeWordpress: GlobalKey(),
    SkillKey.gaugeWso2: GlobalKey(),
    SkillKey.gaugeXamarin: GlobalKey(),
    SkillKey.gaugeXcode: GlobalKey(),
    SkillKey.gaugeXml: GlobalKey(),
  };
}
