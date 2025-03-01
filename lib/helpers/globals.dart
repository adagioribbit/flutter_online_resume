import 'package:carousel_slider/carousel_controller.dart'
    show CarouselSliderController;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_gauge.dart'
    show SkillGauge;
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

ValueListenableBuilder gaugeAccess = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Microsoft Access",
          iconAssetPath: "lib/assets/bubble_content/skill/access.png");
    });

ValueListenableBuilder gaugeAdobe = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Adobe",
          iconAssetPath: "lib/assets/bubble_content/skill/adobe.png");
    });

ValueListenableBuilder gaugeAndroid = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Android",
          iconAssetPath: "lib/assets/bubble_content/skill/android.png");
    });

ValueListenableBuilder gaugeAndroidStudio = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Android Studio",
          iconAssetPath: "lib/assets/bubble_content/skill/android_studio.png");
    });

ValueListenableBuilder gaugeAngular = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Angular",
          iconAssetPath: "lib/assets/bubble_content/skill/angular.png");
    });

ValueListenableBuilder gaugeApacheServer = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Apache Server",
          iconAssetPath: "lib/assets/bubble_content/skill/apache_server.png");
    });

ValueListenableBuilder gaugeAppstore = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "App Store",
          iconAssetPath: "lib/assets/bubble_content/appstore.png");
    });

ValueListenableBuilder gaugeBash = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Bash",
          iconAssetPath: "lib/assets/bubble_content/skill/bash.png");
    });

ValueListenableBuilder gaugeBlender = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Blender",
          iconAssetPath: "lib/assets/bubble_content/skill/blender.png");
    });

ValueListenableBuilder gaugeBluetooth = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Bluetooth",
          iconAssetPath: "lib/assets/bubble_content/skill/bluetooth.png");
    });

ValueListenableBuilder gaugeBootstrap = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Bootstrap",
          iconAssetPath: "lib/assets/bubble_content/skill/bootstrap.png");
    });

ValueListenableBuilder gaugeChrome = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Chrome",
          iconAssetPath: "lib/assets/bubble_content/skill/chrome.png");
    });

ValueListenableBuilder gaugeColaboratory = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Colaboratory",
          iconAssetPath: "lib/assets/bubble_content/skill/colaboratory.png");
    });

ValueListenableBuilder gaugeConfluence = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Confluence",
          iconAssetPath: "lib/assets/bubble_content/skill/confluence.png");
    });

ValueListenableBuilder gaugeCordova = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Cordova",
          iconAssetPath: "lib/assets/bubble_content/skill/cordova.png");
    });

ValueListenableBuilder gaugeCplusplus = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "C++",
          iconAssetPath: "lib/assets/bubble_content/skill/cplusplus.png");
    });

ValueListenableBuilder gaugeCsharp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "C#",
          iconAssetPath: "lib/assets/bubble_content/skill/csharp.png");
    });

ValueListenableBuilder gaugeCss3 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "CSS 3",
          iconAssetPath: "lib/assets/bubble_content/skill/css3.png");
    });

ValueListenableBuilder gaugeDbeaver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "DBeaver",
          iconAssetPath: "lib/assets/bubble_content/skill/dbeaver.png");
    });

ValueListenableBuilder gaugeDebian = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Debian",
          iconAssetPath: "lib/assets/bubble_content/skill/debian.png");
    });

ValueListenableBuilder gaugeDocker = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Docker",
          iconAssetPath: "lib/assets/bubble_content/skill/docker.png");
    });

ValueListenableBuilder gaugeUkFlag = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "English", iconAssetPath: "lib/assets/appbar/uk_flag.png");
    });

ValueListenableBuilder gaugeExcel = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Excel",
          iconAssetPath: "lib/assets/bubble_content/skill/excel.png");
    });

ValueListenableBuilder gaugeFastapi = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "FastAPI",
          iconAssetPath: "lib/assets/bubble_content/skill/fastapi.png");
    });

ValueListenableBuilder gaugeFlutter = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Flutter",
          iconAssetPath: "lib/assets/bubble_content/skill/flutter.png");
    });

ValueListenableBuilder gaugeGit = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Git",
          iconAssetPath: "lib/assets/bubble_content/skill/git.png");
    });

ValueListenableBuilder gaugeGithub = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Github",
          iconAssetPath: "lib/assets/bubble_content/skill/github.png");
    });

ValueListenableBuilder gaugeGitlab = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Gitlab",
          iconAssetPath: "lib/assets/bubble_content/skill/gitlab.png");
    });

ValueListenableBuilder gaugeGoogleDocs = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Google Docs",
          iconAssetPath: "lib/assets/bubble_content/skill/google_docs.png");
    });

ValueListenableBuilder gaugeGooglePlay = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Google Play",
          iconAssetPath: "lib/assets/bubble_content/google_play.png");
    });

ValueListenableBuilder gaugeGradle = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Gradle",
          iconAssetPath: "lib/assets/bubble_content/skill/gradle.png");
    });

ValueListenableBuilder gaugeHtml5 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Html 5",
          iconAssetPath: "lib/assets/bubble_content/skill/html5.png");
    });

ValueListenableBuilder gaugeHuggingface = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Huggingface",
          iconAssetPath: "lib/assets/bubble_content/skill/huggingface.png");
    });

ValueListenableBuilder gaugeIos = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "iOS",
          iconAssetPath: "lib/assets/bubble_content/skill/ios.png");
    });

ValueListenableBuilder gaugeJava = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Java",
          iconAssetPath: "lib/assets/bubble_content/skill/java.png");
    });

ValueListenableBuilder gaugeJavascript = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Javascript",
          iconAssetPath: "lib/assets/bubble_content/skill/javascript.png");
    });

ValueListenableBuilder gaugeJira = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Jira",
          iconAssetPath: "lib/assets/bubble_content/skill/jira.png");
    });

ValueListenableBuilder gaugeJquery = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "JQuery",
          iconAssetPath: "lib/assets/bubble_content/skill/jquery.png");
    });

ValueListenableBuilder gaugeJson = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Json",
          iconAssetPath: "lib/assets/bubble_content/skill/json.png");
    });

ValueListenableBuilder gaugeJupyter = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Jupyter",
          iconAssetPath: "lib/assets/bubble_content/skill/jupyter.png");
    });

ValueListenableBuilder gaugeKaggle = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Kaggle",
          iconAssetPath: "lib/assets/bubble_content/skill/kaggle.png");
    });

ValueListenableBuilder gaugeKeras = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Keras",
          iconAssetPath: "lib/assets/bubble_content/skill/keras.png");
    });

ValueListenableBuilder gaugeLerobert = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Le Robert & Collins",
          iconAssetPath: "lib/assets/bubble_content/skill/lerobert.png");
    });

ValueListenableBuilder gaugeMacos = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Macos",
          iconAssetPath: "lib/assets/bubble_content/skill/macos.png");
    });

ValueListenableBuilder gaugeMailchimp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Mailchimp",
          iconAssetPath: "lib/assets/bubble_content/skill/mailchimp.png");
    });

ValueListenableBuilder gaugeMariadb = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "MariaDB",
          iconAssetPath: "lib/assets/bubble_content/skill/mariadb.png");
    });

ValueListenableBuilder gaugeMatplotlib = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Matplotlib",
          iconAssetPath: "lib/assets/bubble_content/skill/matplotlib.png");
    });

ValueListenableBuilder gaugeMicrosoft = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Microsoft",
          iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png");
    });

ValueListenableBuilder gaugeMysql = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "MySQL",
          iconAssetPath: "lib/assets/bubble_content/skill/mysql.png");
    });

ValueListenableBuilder gaugeNetbeans = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "NetBeans",
          iconAssetPath: "lib/assets/bubble_content/skill/netbeans.png");
    });

ValueListenableBuilder gaugeNetMaui = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: ".NET MAUI",
          iconAssetPath: "lib/assets/bubble_content/skill/net_maui.png");
    });

ValueListenableBuilder gaugeNpm = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "NPM",
          iconAssetPath: "lib/assets/bubble_content/skill/npm.png");
    });

ValueListenableBuilder gaugeObjectivec = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Objective C",
          iconAssetPath: "lib/assets/bubble_content/skill/objectivec.png");
    });

ValueListenableBuilder gaugePandas = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Pandas",
          iconAssetPath: "lib/assets/bubble_content/skill/pandas.png");
    });

ValueListenableBuilder gaugePhp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "PHP 7",
          iconAssetPath: "lib/assets/bubble_content/skill/php.png");
    });

ValueListenableBuilder gaugePhpmyadmin = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "PhpMyAdmin",
          iconAssetPath: "lib/assets/bubble_content/skill/phpmyadmin.png");
    });

ValueListenableBuilder gaugePhpstorm = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "PhpStorm",
          iconAssetPath: "lib/assets/bubble_content/skill/phpstorm.png");
    });

ValueListenableBuilder gaugePowerbi = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Power BI",
          iconAssetPath: "lib/assets/bubble_content/skill/powerbi.png");
    });

ValueListenableBuilder gaugePowershell = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "PowerShell",
          iconAssetPath: "lib/assets/bubble_content/skill/powershell.png");
    });

ValueListenableBuilder gaugePowerQuery = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Power Query",
          iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png");
    });

ValueListenableBuilder gaugePython = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          key: GlobalKeyRing.pythonGauge,
          title: "Python",
          iconAssetPath: "lib/assets/bubble_content/skill/python.png");
    });

ValueListenableBuilder gaugeQt = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Qt", iconAssetPath: "lib/assets/bubble_content/skill/qt.png");
    });

ValueListenableBuilder gaugeReact = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "React",
          iconAssetPath: "lib/assets/bubble_content/skill/react.png");
    });

ValueListenableBuilder gaugeSafari = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Safari",
          iconAssetPath: "lib/assets/bubble_content/skill/safari.png");
    });

ValueListenableBuilder gaugeSeaborn = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Seaborn",
          iconAssetPath: "lib/assets/bubble_content/skill/seaborn.png");
    });

ValueListenableBuilder gaugeSharepoint = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "SharePoint",
          iconAssetPath: "lib/assets/bubble_content/skill/sharepoint.png");
    });

ValueListenableBuilder gaugeSlack = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Slack",
          iconAssetPath: "lib/assets/bubble_content/skill/slack.png");
    });

ValueListenableBuilder gaugeSql = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "SQL",
          iconAssetPath: "lib/assets/bubble_content/skill/sql.png");
    });

ValueListenableBuilder gaugeSqlserver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "SQL Server",
          iconAssetPath: "lib/assets/bubble_content/skill/sqlserver.png");
    });

ValueListenableBuilder gaugeSqlite = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "SQLite",
          iconAssetPath: "lib/assets/bubble_content/skill/sqlite.png");
    });

ValueListenableBuilder gaugeStackoverflow = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Stackoverflow",
          iconAssetPath: "lib/assets/bubble_content/skill/stackoverflow.png");
    });

ValueListenableBuilder gaugeTensorflow = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Tensorflow",
          iconAssetPath: "lib/assets/bubble_content/skill/tensorflow.png");
    });

ValueListenableBuilder gaugeThingsboard = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Thingsboard",
          iconAssetPath: "lib/assets/bubble_content/skill/thingsboard.png");
    });

ValueListenableBuilder gaugeTomcat = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Tomcat",
          iconAssetPath: "lib/assets/bubble_content/skill/tomcat.png");
    });

ValueListenableBuilder gaugeTrello = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Trello",
          iconAssetPath: "lib/assets/bubble_content/skill/trello.png");
    });

ValueListenableBuilder gaugeUml = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "UML",
          iconAssetPath: "lib/assets/bubble_content/skill/uml.png");
    });

ValueListenableBuilder gaugeVisualStudio2022 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Visual Studio 2022",
          iconAssetPath:
              "lib/assets/bubble_content/skill/visual_studio_2022.png");
    });

ValueListenableBuilder gaugeVmwareWorkstation = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "VMWare Workstation",
          iconAssetPath:
              "lib/assets/bubble_content/skill/vmware_workstation.png");
    });

ValueListenableBuilder gaugeVscode = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Visual Studio Code",
          iconAssetPath: "lib/assets/bubble_content/skill/vscode.png");
    });

ValueListenableBuilder gaugeWikipedia = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Wikipedia",
          iconAssetPath: "lib/assets/bubble_content/skill/wikipedia.png");
    });

ValueListenableBuilder gaugeWindows = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Windows",
          iconAssetPath: "lib/assets/bubble_content/skill/windows.png");
    });

ValueListenableBuilder gaugeWindowsserver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Windows Server",
          iconAssetPath: "lib/assets/bubble_content/skill/windowsserver.png");
    });

ValueListenableBuilder gaugeWordpress = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Wordpress",
          iconAssetPath: "lib/assets/bubble_content/skill/wordpress.png");
    });

ValueListenableBuilder gaugeWso2 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "WSO2",
          iconAssetPath: "lib/assets/bubble_content/skill/wso2.png");
    });

ValueListenableBuilder gaugeXamarin = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "Xamarin",
          iconAssetPath: "lib/assets/bubble_content/skill/xamarin.png");
    });

ValueListenableBuilder gaugeXcode = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "XCode",
          iconAssetPath: "lib/assets/bubble_content/skill/xcode.png");
    });

ValueListenableBuilder gaugeXml = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillGauge(
          title: "XML",
          iconAssetPath: "lib/assets/bubble_content/skill/xml.png");
    });

List<Widget> skillList = [
  gaugeAccess,
  gaugeAdobe,
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
  gaugeMicrosoft,
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
  gaugeStackoverflow,
  gaugeTensorflow,
  gaugeThingsboard,
  gaugeTomcat,
  gaugeTrello,
  gaugeUml,
  gaugeVisualStudio2022,
  gaugeVmwareWorkstation,
  gaugeVscode,
  gaugeWikipedia,
  gaugeWindows,
  gaugeWindowsserver,
  gaugeWordpress,
  gaugeWso2,
  gaugeXamarin,
  gaugeXcode,
  gaugeXml
];
