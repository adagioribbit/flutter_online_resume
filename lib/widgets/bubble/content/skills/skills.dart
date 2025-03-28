import 'package:flutter/widgets.dart' show Widget;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show SkillKey, SkillType, SkillUsage;
import 'package:dossier_de_competences_web/widgets/bubble/content/education/education_badges.dart'
    show badgeLeCnam, badgeUpec, badgeGreta, badgeLeWagon;
import 'package:dossier_de_competences_web/widgets/bubble/content/work_experience/work_experience_badges.dart'
    show
        badgeAmiltoneAndroid,
        badgeAmiltoneIot,
        badgeAmiltoneMigration,
        badgeAmiltonePowerBI,
        badgeAmiltoneWSO2,
        badgeEvolucareBorne,
        badgeEvolucareImaging,
        badgeEvolucareMobile,
        badgePrastelBT,
        badgePrastelCRN15M,
        badgePrastelSiteInterne,
        badgeYardStick;

class Skill {
  final SkillKey key;
  final SkillType type;
  final SkillUsage usage;
  final String iconAssetPath, title;
  final double nbYearsPractice;
  final DateTime dateLastUsed;
  final List<Widget> experiences;

  const Skill(
      {required this.key,
      required this.type,
      required this.usage,
      required this.iconAssetPath,
      required this.title,
      required this.nbYearsPractice,
      required this.dateLastUsed,
      required this.experiences});

  Map<String, dynamic> _toSortMap() {
    return {
      "key": key,
      "title": title,
      "type": type,
      "usage": usage,
      "nbYearsPractice": nbYearsPractice,
      "dateLastUsed": dateLastUsed,
    };
  }

  dynamic get(String propName) {
    var objMap = _toSortMap();
    if (objMap.containsKey(propName)) {
      return objMap[propName];
    }
    throw ArgumentError('Propery name not found in Skill object');
  }
}

Skill gaugeAccess = Skill(
    key: SkillKey.gaugeAccess,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Microsoft Access",
    iconAssetPath: "lib/assets/bubble_content/skill/access.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime(2022, 4),
    experiences: [badgeAmiltoneMigration]);

Skill gaugeAndroid = Skill(
    key: SkillKey.gaugeAndroid,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Android",
    iconAssetPath: "lib/assets/bubble_content/skill/android.png",
    nbYearsPractice: 6.9,
    dateLastUsed: DateTime(2024, 4),
    experiences: [
      badgePrastelBT,
      badgePrastelCRN15M,
      badgeAmiltoneAndroid,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

Skill gaugeAndroidStudio = Skill(
    key: SkillKey.gaugeAndroidStudio,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Android Studio",
    iconAssetPath: "lib/assets/bubble_content/skill/android_studio.png",
    nbYearsPractice: 6.9,
    dateLastUsed: DateTime(2023, 12),
    experiences: [
      badgePrastelBT,
      badgePrastelCRN15M,
      badgeAmiltoneAndroid,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

Skill gaugeAngular = Skill(
    key: SkillKey.gaugeAngular,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Angular",
    iconAssetPath: "lib/assets/bubble_content/skill/angular.png",
    nbYearsPractice: .08,
    dateLastUsed: DateTime(2020, 10),
    experiences: [badgeEvolucareBorne]);

Skill gaugeApacheServer = Skill(
    key: SkillKey.gaugeApacheServer,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Apache Server",
    iconAssetPath: "lib/assets/bubble_content/skill/apache_server.png",
    nbYearsPractice: 4.99,
    dateLastUsed: DateTime(2023, 9),
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

Skill gaugeAppstore = Skill(
    key: SkillKey.gaugeAppstore,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "App Store",
    iconAssetPath: "lib/assets/bubble_content/appstore.png",
    nbYearsPractice: 5.74,
    dateLastUsed: DateTime(2024, 4),
    experiences: [badgePrastelBT, badgeEvolucareMobile]);

Skill gaugeBash = Skill(
    key: SkillKey.gaugeBash,
    usage: SkillUsage.devops,
    type: SkillType.language,
    title: "Bash",
    iconAssetPath: "lib/assets/bubble_content/skill/bash.png",
    nbYearsPractice: 4.74,
    dateLastUsed: DateTime(2021, 9),
    experiences: [badgeEvolucareImaging, badgeLeCnam]);

Skill gaugeBlender = Skill(
    key: SkillKey.gaugeBlender,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Blender",
    iconAssetPath: "lib/assets/bubble_content/skill/blender.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2023, 8),
    experiences: [badgePrastelBT]);

Skill gaugeBluetooth = Skill(
    key: SkillKey.gaugeBluetooth,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Bluetooth",
    iconAssetPath: "lib/assets/bubble_content/skill/bluetooth.png",
    nbYearsPractice: 1.83,
    dateLastUsed: DateTime(2024, 4),
    experiences: [badgePrastelBT]);

Skill gaugeBootstrap = Skill(
    key: SkillKey.gaugeBootstrap,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Bootstrap",
    iconAssetPath: "lib/assets/bubble_content/skill/bootstrap.png",
    nbYearsPractice: 3.99,
    dateLastUsed: DateTime(2023, 9),
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne
    ]);

Skill gaugeChrome = Skill(
    key: SkillKey.gaugeChrome,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Chrome",
    iconAssetPath: "lib/assets/bubble_content/skill/chrome.png",
    nbYearsPractice: 6.73,
    dateLastUsed: DateTime.now(),
    experiences: [
      badgeYardStick,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

Skill gaugeColaboratory = Skill(
    key: SkillKey.gaugeColaboratory,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Colaboratory",
    iconAssetPath: "lib/assets/bubble_content/skill/colaboratory.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeConfluence = Skill(
    key: SkillKey.gaugeConfluence,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Confluence",
    iconAssetPath: "lib/assets/bubble_content/skill/confluence.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 11),
    experiences: [
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

Skill gaugeCordova = Skill(
    key: SkillKey.gaugeCordova,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Cordova",
    iconAssetPath: "lib/assets/bubble_content/skill/cordova.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 9),
    experiences: [
      badgeEvolucareMobile,
    ]);

Skill gaugeCplusplus = Skill(
    key: SkillKey.gaugeCplusplus,
    usage: SkillUsage.other,
    type: SkillType.language,
    title: "C++",
    iconAssetPath: "lib/assets/bubble_content/skill/cplusplus.png",
    nbYearsPractice: 0.83,
    dateLastUsed: DateTime(2021, 9),
    experiences: [badgeLeCnam]);

Skill gaugeCsharp = Skill(
    key: SkillKey.gaugeCsharp,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "C#",
    iconAssetPath: "lib/assets/bubble_content/skill/csharp.png",
    nbYearsPractice: 1.99,
    dateLastUsed: DateTime(2024, 4),
    experiences: [
      badgePrastelBT,
      badgeEvolucareImaging,
    ]);

Skill gaugeCss3 = Skill(
    key: SkillKey.gaugeCss3,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "CSS 3",
    iconAssetPath: "lib/assets/bubble_content/skill/css3.png",
    nbYearsPractice: 5.65,
    dateLastUsed: DateTime(2025, 3),
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

Skill gaugeDart = Skill(
    key: SkillKey.gaugeDart,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "Dart",
    iconAssetPath: "lib/assets/bubble_content/skill/dart.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2025, 3),
    experiences: [badgeYardStick]);

Skill gaugeDbeaver = Skill(
    key: SkillKey.gaugeDbeaver,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "DBeaver",
    iconAssetPath: "lib/assets/bubble_content/skill/dbeaver.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeDebian = Skill(
    key: SkillKey.gaugeDebian,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Debian",
    iconAssetPath: "lib/assets/bubble_content/skill/debian.png",
    nbYearsPractice: 5.98,
    dateLastUsed: DateTime.now(),
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

Skill gaugeDocker = Skill(
    key: SkillKey.gaugeDocker,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Docker",
    iconAssetPath: "lib/assets/bubble_content/skill/docker.png",
    nbYearsPractice: .99,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon, badgeLeCnam]);

Skill gaugeUkFlag = Skill(
    key: SkillKey.gaugeUkFlag,
    usage: SkillUsage.other,
    type: SkillType.language,
    title: "English",
    iconAssetPath: "lib/assets/appbar/uk_flag.png",
    dateLastUsed: DateTime.now(),
    nbYearsPractice:
        (DateTime.now().difference(DateTime(2015, 9, 1)).inDays / 365),
    experiences: [badgeUpec]);

Skill gaugeExcel = Skill(
    key: SkillKey.gaugeExcel,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Excel",
    iconAssetPath: "lib/assets/bubble_content/skill/excel.png",
    nbYearsPractice: 1.83,
    dateLastUsed: DateTime(2024, 4),
    experiences: [badgePrastelBT]);

Skill gaugeFastapi = Skill(
    key: SkillKey.gaugeFastapi,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "FastAPI",
    iconAssetPath: "lib/assets/bubble_content/skill/fastapi.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeFlutter = Skill(
    key: SkillKey.gaugeFlutter,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Flutter",
    iconAssetPath: "lib/assets/bubble_content/skill/flutter.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime.now(),
    experiences: [badgeYardStick]);

Skill gaugeGit = Skill(
    key: SkillKey.gaugeGit,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Git",
    iconAssetPath: "lib/assets/bubble_content/skill/git.png",
    nbYearsPractice: 5.74,
    dateLastUsed: DateTime.now(),
    experiences: [
      badgePrastelBT,
      badgePrastelSiteInterne,
    ]);

Skill gaugeGithub = Skill(
    key: SkillKey.gaugeGithub,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Github",
    iconAssetPath: "lib/assets/bubble_content/skill/github.png",
    nbYearsPractice: 8.32,
    dateLastUsed: DateTime.now(),
    experiences: [badgeYardStick, badgeLeWagon]);

Skill gaugeGitlab = Skill(
    key: SkillKey.gaugeGitlab,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Gitlab",
    iconAssetPath: "lib/assets/bubble_content/skill/gitlab.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 10),
    experiences: [
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

Skill gaugeGoogleDocs = Skill(
    key: SkillKey.gaugeGoogleDocs,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Google Docs",
    iconAssetPath: "lib/assets/bubble_content/skill/google_docs.png",
    nbYearsPractice: 1.16,
    dateLastUsed: DateTime.now(),
    experiences: [badgeAmiltoneMigration, badgeGreta]);

Skill gaugeGooglePlay = Skill(
    key: SkillKey.gaugeGooglePlay,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Google Play",
    iconAssetPath: "lib/assets/bubble_content/google_play.png",
    nbYearsPractice: 5.74,
    dateLastUsed: DateTime(2024, 4),
    experiences: [badgePrastelBT, badgePrastelCRN15M]);

Skill gaugeGradle = Skill(
    key: SkillKey.gaugeGradle,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Gradle",
    iconAssetPath: "lib/assets/bubble_content/skill/gradle.png",
    nbYearsPractice: 4.99,
    dateLastUsed: DateTime(2023, 12),
    experiences: [
      badgePrastelCRN15M,
      badgeEvolucareMobile,
    ]);

Skill gaugeHtml5 = Skill(
    key: SkillKey.gaugeHtml5,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Html 5",
    iconAssetPath: "lib/assets/bubble_content/skill/html5.png",
    nbYearsPractice: 5.65,
    dateLastUsed: DateTime.now(),
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

Skill gaugeHuggingface = Skill(
    key: SkillKey.gaugeHuggingface,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Huggingface",
    iconAssetPath: "lib/assets/bubble_content/skill/huggingface.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeIos = Skill(
    key: SkillKey.gaugeIos,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "iOS",
    iconAssetPath: "lib/assets/bubble_content/skill/ios.png",
    nbYearsPractice: 6.74,
    dateLastUsed: DateTime.now(),
    experiences: [
      badgePrastelBT,
      badgeEvolucareMobile,
    ]);

Skill gaugeJava = Skill(
    key: SkillKey.gaugeJava,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "Java",
    iconAssetPath: "lib/assets/bubble_content/skill/java.png",
    nbYearsPractice: 1.07,
    dateLastUsed: DateTime(2023, 12),
    experiences: [
      badgePrastelCRN15M,
      badgeAmiltoneAndroid,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

Skill gaugeJavascript = Skill(
    key: SkillKey.gaugeJavascript,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Javascript",
    iconAssetPath: "lib/assets/bubble_content/skill/javascript.png",
    nbYearsPractice: 5.57,
    dateLastUsed: DateTime(2025, 3),
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

Skill gaugeJira = Skill(
    key: SkillKey.gaugeJira,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Jira",
    iconAssetPath: "lib/assets/bubble_content/skill/jira.png",
    nbYearsPractice: 5.23,
    dateLastUsed: DateTime(2021, 11),
    experiences: [
      badgeAmiltoneWSO2,
      badgeAmiltoneAndroid,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

Skill gaugeJquery = Skill(
    key: SkillKey.gaugeJquery,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "JQuery",
    iconAssetPath: "lib/assets/bubble_content/skill/jquery.png",
    nbYearsPractice: 5.57,
    dateLastUsed: DateTime(2023, 9),
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
    ]);

Skill gaugeJson = Skill(
    key: SkillKey.gaugeJson,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Json",
    iconAssetPath: "lib/assets/bubble_content/skill/json.png",
    nbYearsPractice: 6.73,
    dateLastUsed: DateTime(2024, 9),
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

Skill gaugeJupyter = Skill(
    key: SkillKey.gaugeJupyter,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Jupyter",
    iconAssetPath: "lib/assets/bubble_content/skill/jupyter.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeKaggle = Skill(
    key: SkillKey.gaugeKaggle,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Kaggle",
    iconAssetPath: "lib/assets/bubble_content/skill/kaggle.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeKeras = Skill(
    key: SkillKey.gaugeKeras,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Keras",
    iconAssetPath: "lib/assets/bubble_content/skill/keras.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeLerobert = Skill(
    key: SkillKey.gaugeLerobert,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Le Robert & Collins",
    iconAssetPath: "lib/assets/bubble_content/skill/lerobert.png",
    nbYearsPractice: 7.2,
    dateLastUsed: DateTime(2013, 9),
    experiences: [badgeUpec]);

Skill gaugeMacos = Skill(
    key: SkillKey.gaugeMacos,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Macos",
    iconAssetPath: "lib/assets/bubble_content/skill/macos.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2024, 4),
    experiences: [
      badgePrastelBT,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
    ]);

Skill gaugeMailchimp = Skill(
    key: SkillKey.gaugeMailchimp,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Mailchimp",
    iconAssetPath: "lib/assets/bubble_content/skill/mailchimp.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2016, 7),
    experiences: [badgeGreta]);

Skill gaugeMariadb = Skill(
    key: SkillKey.gaugeMariadb,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "MariaDB",
    iconAssetPath: "lib/assets/bubble_content/skill/mariadb.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 9),
    experiences: [
      badgeEvolucareImaging,
    ]);

Skill gaugeMatplotlib = Skill(
    key: SkillKey.gaugeMatplotlib,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Matplotlib",
    iconAssetPath: "lib/assets/bubble_content/skill/matplotlib.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeMysql = Skill(
    key: SkillKey.gaugeMysql,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "MySQL",
    iconAssetPath: "lib/assets/bubble_content/skill/mysql.png",
    nbYearsPractice: 1.74,
    dateLastUsed: DateTime(2023, 9),
    experiences: [badgePrastelSiteInterne, badgeLeCnam, badgeGreta]);

Skill gaugeNetbeans = Skill(
    key: SkillKey.gaugeNetbeans,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "NetBeans",
    iconAssetPath: "lib/assets/bubble_content/skill/netbeans.png",
    nbYearsPractice: 0.99,
    dateLastUsed: DateTime(2021, 9),
    experiences: [badgeEvolucareImaging, badgeLeCnam]);

Skill gaugeNetMaui = Skill(
    key: SkillKey.gaugeNetMaui,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: ".NET MAUI",
    iconAssetPath: "lib/assets/bubble_content/skill/net_maui.png",
    nbYearsPractice: 1.83,
    dateLastUsed: DateTime(2024, 4),
    experiences: [badgePrastelBT]);

Skill gaugeNpm = Skill(
    key: SkillKey.gaugeNpm,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "NPM",
    iconAssetPath: "lib/assets/bubble_content/skill/npm.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 9),
    experiences: [
      badgeEvolucareMobile,
    ]);

Skill gaugeObjectivec = Skill(
    key: SkillKey.gaugeObjectivec,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "Objective C",
    iconAssetPath: "lib/assets/bubble_content/skill/objectivec.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2021, 9),
    experiences: [
      badgeEvolucareMobile,
    ]);

Skill gaugePandas = Skill(
    key: SkillKey.gaugePandas,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Pandas",
    iconAssetPath: "lib/assets/bubble_content/skill/pandas.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugePhp = Skill(
    key: SkillKey.gaugePhp,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "PHP 7",
    iconAssetPath: "lib/assets/bubble_content/skill/php.png",
    nbYearsPractice: 5.65,
    dateLastUsed: DateTime(2023, 9),
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

Skill gaugePhpmyadmin = Skill(
    key: SkillKey.gaugePhpmyadmin,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "PhpMyAdmin",
    iconAssetPath: "lib/assets/bubble_content/skill/phpmyadmin.png",
    nbYearsPractice: 4.74,
    dateLastUsed: DateTime(2023, 9),
    experiences: [badgeEvolucareImaging, badgeGreta]);

Skill gaugePhpstorm = Skill(
    key: SkillKey.gaugePhpstorm,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "PhpStorm",
    iconAssetPath: "lib/assets/bubble_content/skill/phpstorm.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 10),
    experiences: [
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

Skill gaugePowerbi = Skill(
    key: SkillKey.gaugePowerbi,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Power BI",
    iconAssetPath: "lib/assets/bubble_content/skill/powerbi.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime(2022, 3),
    experiences: [badgeAmiltonePowerBI]);

Skill gaugePowershell = Skill(
    key: SkillKey.gaugePowershell,
    usage: SkillUsage.devops,
    type: SkillType.language,
    title: "PowerShell",
    iconAssetPath: "lib/assets/bubble_content/skill/powershell.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime.now(),
    experiences: [
      badgeAmiltoneIot,
    ]);

Skill gaugePowerQuery = Skill(
    key: SkillKey.gaugePowerQuery,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Power Query",
    iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime(2022, 4),
    experiences: [
      badgeAmiltonePowerBI,
    ]);

Skill gaugePython = Skill(
    key: SkillKey.gaugePython,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.language,
    title: "Python",
    iconAssetPath: "lib/assets/bubble_content/skill/python.png",
    nbYearsPractice: 1.32,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon, badgeAmiltoneIot, badgeGreta]);

Skill gaugeQt = Skill(
    key: SkillKey.gaugeQt,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Qt",
    iconAssetPath: "lib/assets/bubble_content/skill/qt.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 9),
    experiences: [
      badgeEvolucareImaging,
    ]);

Skill gaugeReact = Skill(
    key: SkillKey.gaugeReact,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "React",
    iconAssetPath: "lib/assets/bubble_content/skill/react.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 11),
    experiences: []);

Skill gaugeSafari = Skill(
    key: SkillKey.gaugeSafari,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Safari",
    iconAssetPath: "lib/assets/bubble_content/skill/safari.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime.now(),
    experiences: [
      badgeEvolucareImaging,
    ]);

Skill gaugeSeaborn = Skill(
    key: SkillKey.gaugeSeaborn,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Seaborn",
    iconAssetPath: "lib/assets/bubble_content/skill/seaborn.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeSharepoint = Skill(
    key: SkillKey.gaugeSharepoint,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "SharePoint",
    iconAssetPath: "lib/assets/bubble_content/skill/sharepoint.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime(2022, 4),
    experiences: [
      badgeAmiltoneMigration,
    ]);

Skill gaugeSlack = Skill(
    key: SkillKey.gaugeSlack,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Slack",
    iconAssetPath: "lib/assets/bubble_content/skill/slack.png",
    nbYearsPractice: 5.74,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeEvolucareImaging, badgeEvolucareMobile, badgeGreta]);

Skill gaugeSql = Skill(
    key: SkillKey.gaugeSql,
    usage: SkillUsage.backend,
    type: SkillType.language,
    title: "SQL",
    iconAssetPath: "lib/assets/bubble_content/skill/sql.png",
    nbYearsPractice: 7.06,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon, badgeAmiltonePowerBI, badgeLeCnam, badgeGreta]);

Skill gaugeSqlserver = Skill(
    key: SkillKey.gaugeSqlserver,
    usage: SkillUsage.backend,
    type: SkillType.tool,
    title: "SQL Server",
    iconAssetPath: "lib/assets/bubble_content/skill/sqlserver.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime(2022, 4),
    experiences: [
      badgeAmiltoneMigration,
      badgeAmiltoneIot,
      badgeAmiltonePowerBI,
    ]);

Skill gaugeSqlite = Skill(
    key: SkillKey.gaugeSqlite,
    usage: SkillUsage.backend,
    type: SkillType.language,
    title: "SQLite",
    iconAssetPath: "lib/assets/bubble_content/skill/sqlite.png",
    nbYearsPractice: 4.91,
    dateLastUsed: DateTime(2021, 9),
    experiences: [badgeEvolucareMobile]);

Skill gaugeTensorflow = Skill(
    key: SkillKey.gaugeTensorflow,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Tensorflow",
    iconAssetPath: "lib/assets/bubble_content/skill/tensorflow.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2024, 9),
    experiences: [badgeLeWagon]);

Skill gaugeThingsboard = Skill(
    key: SkillKey.gaugeThingsboard,
    usage: SkillUsage.backend,
    type: SkillType.tool,
    title: "Thingsboard",
    iconAssetPath: "lib/assets/bubble_content/skill/thingsboard.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime(2022, 4),
    experiences: [badgeAmiltoneIot]);

Skill gaugeTomcat = Skill(
    key: SkillKey.gaugeTomcat,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Tomcat",
    iconAssetPath: "lib/assets/bubble_content/skill/tomcat.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2017, 7),
    experiences: [badgeLeCnam]);

Skill gaugeTrello = Skill(
    key: SkillKey.gaugeTrello,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Trello",
    iconAssetPath: "lib/assets/bubble_content/skill/trello.png",
    nbYearsPractice: 0.83,
    dateLastUsed: DateTime(2016, 7),
    experiences: [badgeGreta]);

Skill gaugeUml = Skill(
    key: SkillKey.gaugeUml,
    usage: SkillUsage.teamWork,
    type: SkillType.language,
    title: "UML",
    iconAssetPath: "lib/assets/bubble_content/skill/uml.png",
    nbYearsPractice: 5.74,
    dateLastUsed: DateTime(2021, 9),
    experiences: [badgeEvolucareImaging, badgeEvolucareMobile, badgeLeCnam]);

Skill gaugeVisualStudio2022 = Skill(
    key: SkillKey.gaugeVisualStudio2022,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Visual Studio 2022",
    iconAssetPath: "lib/assets/bubble_content/skill/visual_studio_2022.png",
    nbYearsPractice: 1.83,
    dateLastUsed: DateTime(2024, 4),
    experiences: [badgePrastelBT]);

Skill gaugeVscode = Skill(
    key: SkillKey.gaugeVscode,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Visual Studio Code",
    iconAssetPath: "lib/assets/bubble_content/skill/vscode.png",
    nbYearsPractice: .32,
    dateLastUsed: DateTime.now(),
    experiences: [badgeYardStick, badgeLeWagon]);

Skill gaugeVmwareWorkstation = Skill(
    key: SkillKey.gaugeVmwareWorkstation,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "VMWare Workstation",
    iconAssetPath: "lib/assets/bubble_content/skill/vmware_workstation.png",
    nbYearsPractice: 0.83,
    dateLastUsed: DateTime(2016, 7),
    experiences: [badgeGreta]);

Skill gaugeWikipedia = Skill(
    key: SkillKey.gaugeWikipedia,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Wikipedia",
    iconAssetPath: "lib/assets/bubble_content/skill/wikipedia.png",
    nbYearsPractice: 4.3,
    dateLastUsed: DateTime(2024, 12),
    experiences: [badgeUpec]);

Skill gaugeWindows = Skill(
    key: SkillKey.gaugeWindows,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Windows",
    iconAssetPath: "lib/assets/bubble_content/skill/windows.png",
    nbYearsPractice: 10,
    dateLastUsed: DateTime.now(),
    experiences: [badgeLeWagon, badgeEvolucareBorne, badgeGreta]);

Skill gaugeWindowsserver = Skill(
    key: SkillKey.gaugeWindowsserver,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Windows Server",
    iconAssetPath: "lib/assets/bubble_content/skill/windowsserver.png",
    nbYearsPractice: .33,
    dateLastUsed: DateTime(2022, 4),
    experiences: [
      badgeAmiltoneMigration,
    ]);

Skill gaugeWordpress = Skill(
    key: SkillKey.gaugeWordpress,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Wordpress",
    iconAssetPath: "lib/assets/bubble_content/skill/wordpress.png",
    nbYearsPractice: 0.83,
    dateLastUsed: DateTime(2016, 7),
    experiences: [badgeGreta]);

Skill gaugeWso2 = Skill(
    key: SkillKey.gaugeWso2,
    usage: SkillUsage.backend,
    type: SkillType.tool,
    title: "WSO2",
    iconAssetPath: "lib/assets/bubble_content/skill/wso2.png",
    nbYearsPractice: .16,
    dateLastUsed: DateTime(2021, 11),
    experiences: [
      badgeAmiltoneWSO2,
    ]);

Skill gaugeXamarin = Skill(
    key: SkillKey.gaugeXamarin,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Xamarin",
    iconAssetPath: "lib/assets/bubble_content/skill/xamarin.png",
    nbYearsPractice: 1.83,
    dateLastUsed: DateTime(2024, 4),
    experiences: [badgePrastelBT]);

Skill gaugeXcode = Skill(
    key: SkillKey.gaugeXcode,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "XCode",
    iconAssetPath: "lib/assets/bubble_content/skill/xcode.png",
    nbYearsPractice: 6.74,
    dateLastUsed: DateTime(2024, 4),
    experiences: [
      badgePrastelBT,
      badgeEvolucareMobile,
    ]);

Skill gaugeXml = Skill(
    key: SkillKey.gaugeXml,
    usage: SkillUsage.other,
    type: SkillType.language,
    title: "XML",
    iconAssetPath: "lib/assets/bubble_content/skill/xml.png",
    nbYearsPractice: 4.07,
    dateLastUsed: DateTime(2024, 9),
    experiences: [
      badgeAmiltoneWSO2,
      badgeEvolucareImaging,
    ]);

List<Skill> skills = [
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
];
