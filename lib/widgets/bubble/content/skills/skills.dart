import 'package:dossier_de_competences_web/helpers/globals.dart'
    show SkillKey, SkillType, SkillUsage;
import 'package:dossier_de_competences_web/widgets/bubble/content/education/education_badges.dart'
    show badgeLeCnam, badgeUpec, badgeGreta, badgeLeWagon;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_list_item.dart'
    show SkillListItem;
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

SkillListItem gaugeAccess = SkillListItem(
    skillKey: SkillKey.gaugeAccess,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Microsoft Access",
    iconAssetPath: "lib/assets/bubble_content/skill/access.png",
    nbYearsPractice: .33,
    experiences: [badgeAmiltoneMigration]);

SkillListItem gaugeAndroid = SkillListItem(
    skillKey: SkillKey.gaugeAndroid,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Android",
    iconAssetPath: "lib/assets/bubble_content/skill/android.png",
    nbYearsPractice: 6.9,
    experiences: [
      badgePrastelBT,
      badgePrastelCRN15M,
      badgeAmiltoneAndroid,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

SkillListItem gaugeAndroidStudio = SkillListItem(
    skillKey: SkillKey.gaugeAndroidStudio,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Android Studio",
    iconAssetPath: "lib/assets/bubble_content/skill/android_studio.png",
    nbYearsPractice: 6.9,
    experiences: [
      badgePrastelBT,
      badgePrastelCRN15M,
      badgeAmiltoneAndroid,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

SkillListItem gaugeAngular = SkillListItem(
    skillKey: SkillKey.gaugeAngular,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Angular",
    iconAssetPath: "lib/assets/bubble_content/skill/angular.png",
    nbYearsPractice: .08,
    experiences: [badgeEvolucareBorne]);

SkillListItem gaugeApacheServer = SkillListItem(
    skillKey: SkillKey.gaugeApacheServer,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Apache Server",
    iconAssetPath: "lib/assets/bubble_content/skill/apache_server.png",
    nbYearsPractice: 4.99,
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

SkillListItem gaugeAppstore = SkillListItem(
    skillKey: SkillKey.gaugeAppstore,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "App Store",
    iconAssetPath: "lib/assets/bubble_content/appstore.png",
    nbYearsPractice: 5.74,
    experiences: [badgePrastelBT, badgeEvolucareMobile]);

SkillListItem gaugeBash = SkillListItem(
    skillKey: SkillKey.gaugeBash,
    usage: SkillUsage.devops,
    type: SkillType.language,
    title: "Bash",
    iconAssetPath: "lib/assets/bubble_content/skill/bash.png",
    nbYearsPractice: 4.74,
    experiences: [badgeEvolucareImaging, badgeLeCnam]);

SkillListItem gaugeBlender = SkillListItem(
    skillKey: SkillKey.gaugeBlender,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Blender",
    iconAssetPath: "lib/assets/bubble_content/skill/blender.png",
    nbYearsPractice: .16,
    experiences: [badgePrastelBT]);

SkillListItem gaugeBluetooth = SkillListItem(
    skillKey: SkillKey.gaugeBluetooth,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Bluetooth",
    iconAssetPath: "lib/assets/bubble_content/skill/bluetooth.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeBootstrap = SkillListItem(
    skillKey: SkillKey.gaugeBootstrap,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Bootstrap",
    iconAssetPath: "lib/assets/bubble_content/skill/bootstrap.png",
    nbYearsPractice: 3.99,
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne
    ]);

SkillListItem gaugeChrome = SkillListItem(
    skillKey: SkillKey.gaugeChrome,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Chrome",
    iconAssetPath: "lib/assets/bubble_content/skill/chrome.png",
    nbYearsPractice: 6.73,
    experiences: [
      badgeYardStick,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

SkillListItem gaugeColaboratory = SkillListItem(
    skillKey: SkillKey.gaugeColaboratory,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Colaboratory",
    iconAssetPath: "lib/assets/bubble_content/skill/colaboratory.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeConfluence = SkillListItem(
    skillKey: SkillKey.gaugeConfluence,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Confluence",
    iconAssetPath: "lib/assets/bubble_content/skill/confluence.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

SkillListItem gaugeCordova = SkillListItem(
    skillKey: SkillKey.gaugeCordova,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Cordova",
    iconAssetPath: "lib/assets/bubble_content/skill/cordova.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeCplusplus = SkillListItem(
    skillKey: SkillKey.gaugeCplusplus,
    usage: SkillUsage.other,
    type: SkillType.language,
    title: "C++",
    iconAssetPath: "lib/assets/bubble_content/skill/cplusplus.png",
    nbYearsPractice: 0.83,
    experiences: [badgeLeCnam]);

SkillListItem gaugeCsharp = SkillListItem(
    skillKey: SkillKey.gaugeCsharp,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "C#",
    iconAssetPath: "lib/assets/bubble_content/skill/csharp.png",
    nbYearsPractice: 1.99,
    experiences: [
      badgePrastelBT,
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeCss3 = SkillListItem(
    skillKey: SkillKey.gaugeCss3,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "CSS 3",
    iconAssetPath: "lib/assets/bubble_content/skill/css3.png",
    nbYearsPractice: 5.65,
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

SkillListItem gaugeDart = SkillListItem(
    skillKey: SkillKey.gaugeDart,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "Dart",
    iconAssetPath: "lib/assets/bubble_content/skill/dart.png",
    nbYearsPractice: .16,
    experiences: [badgeYardStick]);

SkillListItem gaugeDbeaver = SkillListItem(
    skillKey: SkillKey.gaugeDbeaver,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "DBeaver",
    iconAssetPath: "lib/assets/bubble_content/skill/dbeaver.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeDebian = SkillListItem(
    skillKey: SkillKey.gaugeDebian,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Debian",
    iconAssetPath: "lib/assets/bubble_content/skill/debian.png",
    nbYearsPractice: 5.98,
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

SkillListItem gaugeDocker = SkillListItem(
    skillKey: SkillKey.gaugeDocker,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Docker",
    iconAssetPath: "lib/assets/bubble_content/skill/docker.png",
    nbYearsPractice: .99,
    experiences: [badgeLeWagon, badgeLeCnam]);

SkillListItem gaugeUkFlag = SkillListItem(
    skillKey: SkillKey.gaugeUkFlag,
    usage: SkillUsage.other,
    type: SkillType.language,
    title: "English",
    iconAssetPath: "lib/assets/appbar/uk_flag.png",
    nbYearsPractice:
        (DateTime.now().difference(DateTime(2015, 9, 1)).inDays / 365),
    experiences: [badgeUpec]);

SkillListItem gaugeExcel = SkillListItem(
    skillKey: SkillKey.gaugeExcel,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Excel",
    iconAssetPath: "lib/assets/bubble_content/skill/excel.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeFastapi = SkillListItem(
    skillKey: SkillKey.gaugeFastapi,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "FastAPI",
    iconAssetPath: "lib/assets/bubble_content/skill/fastapi.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeFlutter = SkillListItem(
    skillKey: SkillKey.gaugeFlutter,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Flutter",
    iconAssetPath: "lib/assets/bubble_content/skill/flutter.png",
    nbYearsPractice: .16,
    experiences: [badgeYardStick]);

SkillListItem gaugeGit = SkillListItem(
    skillKey: SkillKey.gaugeGit,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Git",
    iconAssetPath: "lib/assets/bubble_content/skill/git.png",
    nbYearsPractice: 5.74,
    experiences: [
      badgePrastelBT,
      badgePrastelSiteInterne,
    ]);

SkillListItem gaugeGithub = SkillListItem(
    skillKey: SkillKey.gaugeGithub,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Github",
    iconAssetPath: "lib/assets/bubble_content/skill/github.png",
    nbYearsPractice: 8.32,
    experiences: [badgeYardStick, badgeLeWagon]);

SkillListItem gaugeGitlab = SkillListItem(
    skillKey: SkillKey.gaugeGitlab,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "Gitlab",
    iconAssetPath: "lib/assets/bubble_content/skill/gitlab.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

SkillListItem gaugeGoogleDocs = SkillListItem(
    skillKey: SkillKey.gaugeGoogleDocs,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Google Docs",
    iconAssetPath: "lib/assets/bubble_content/skill/google_docs.png",
    nbYearsPractice: 1.16,
    experiences: [badgeAmiltoneMigration, badgeGreta]);

SkillListItem gaugeGooglePlay = SkillListItem(
    skillKey: SkillKey.gaugeGooglePlay,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Google Play",
    iconAssetPath: "lib/assets/bubble_content/google_play.png",
    nbYearsPractice: 5.74,
    experiences: [badgePrastelBT, badgePrastelCRN15M]);

SkillListItem gaugeGradle = SkillListItem(
    skillKey: SkillKey.gaugeGradle,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Gradle",
    iconAssetPath: "lib/assets/bubble_content/skill/gradle.png",
    nbYearsPractice: 4.99,
    experiences: [
      badgePrastelCRN15M,
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeHtml5 = SkillListItem(
    skillKey: SkillKey.gaugeHtml5,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Html 5",
    iconAssetPath: "lib/assets/bubble_content/skill/html5.png",
    nbYearsPractice: 5.65,
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

SkillListItem gaugeHuggingface = SkillListItem(
    skillKey: SkillKey.gaugeHuggingface,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Huggingface",
    iconAssetPath: "lib/assets/bubble_content/skill/huggingface.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeIos = SkillListItem(
    skillKey: SkillKey.gaugeIos,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "iOS",
    iconAssetPath: "lib/assets/bubble_content/skill/ios.png",
    nbYearsPractice: 6.74,
    experiences: [
      badgePrastelBT,
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeJava = SkillListItem(
    skillKey: SkillKey.gaugeJava,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "Java",
    iconAssetPath: "lib/assets/bubble_content/skill/java.png",
    nbYearsPractice: 1.07,
    experiences: [
      badgePrastelCRN15M,
      badgeAmiltoneAndroid,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeLeCnam
    ]);

SkillListItem gaugeJavascript = SkillListItem(
    skillKey: SkillKey.gaugeJavascript,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Javascript",
    iconAssetPath: "lib/assets/bubble_content/skill/javascript.png",
    nbYearsPractice: 5.57,
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

SkillListItem gaugeJira = SkillListItem(
    skillKey: SkillKey.gaugeJira,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Jira",
    iconAssetPath: "lib/assets/bubble_content/skill/jira.png",
    nbYearsPractice: 5.23,
    experiences: [
      badgeAmiltoneWSO2,
      badgeAmiltoneAndroid,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

SkillListItem gaugeJquery = SkillListItem(
    skillKey: SkillKey.gaugeJquery,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "JQuery",
    iconAssetPath: "lib/assets/bubble_content/skill/jquery.png",
    nbYearsPractice: 3.99,
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
    ]);

SkillListItem gaugeJson = SkillListItem(
    skillKey: SkillKey.gaugeJson,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Json",
    iconAssetPath: "lib/assets/bubble_content/skill/json.png",
    nbYearsPractice: 6.73,
    experiences: [
      badgeLeWagon,
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

SkillListItem gaugeJupyter = SkillListItem(
    skillKey: SkillKey.gaugeJupyter,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Jupyter",
    iconAssetPath: "lib/assets/bubble_content/skill/jupyter.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeKaggle = SkillListItem(
    skillKey: SkillKey.gaugeKaggle,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Kaggle",
    iconAssetPath: "lib/assets/bubble_content/skill/kaggle.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeKeras = SkillListItem(
    skillKey: SkillKey.gaugeKeras,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Keras",
    iconAssetPath: "lib/assets/bubble_content/skill/keras.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeLerobert = SkillListItem(
    skillKey: SkillKey.gaugeLerobert,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Le Robert & Collins",
    iconAssetPath: "lib/assets/bubble_content/skill/lerobert.png",
    nbYearsPractice: 7.2,
    experiences: [badgeUpec]);

SkillListItem gaugeMacos = SkillListItem(
    skillKey: SkillKey.gaugeMacos,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Macos",
    iconAssetPath: "lib/assets/bubble_content/skill/macos.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgePrastelBT,
      badgeEvolucareImaging,
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeMailchimp = SkillListItem(
    skillKey: SkillKey.gaugeMailchimp,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Mailchimp",
    iconAssetPath: "lib/assets/bubble_content/skill/mailchimp.png",
    nbYearsPractice: .16,
    experiences: [badgeGreta]);

SkillListItem gaugeMariadb = SkillListItem(
    skillKey: SkillKey.gaugeMariadb,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "MariaDB",
    iconAssetPath: "lib/assets/bubble_content/skill/mariadb.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeMatplotlib = SkillListItem(
    skillKey: SkillKey.gaugeMatplotlib,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Matplotlib",
    iconAssetPath: "lib/assets/bubble_content/skill/matplotlib.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeMysql = SkillListItem(
    skillKey: SkillKey.gaugeMysql,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "MySQL",
    iconAssetPath: "lib/assets/bubble_content/skill/mysql.png",
    nbYearsPractice: 1.74,
    experiences: [badgePrastelSiteInterne, badgeLeCnam, badgeGreta]);

SkillListItem gaugeNetbeans = SkillListItem(
    skillKey: SkillKey.gaugeNetbeans,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "NetBeans",
    iconAssetPath: "lib/assets/bubble_content/skill/netbeans.png",
    nbYearsPractice: 0.99,
    experiences: [badgeEvolucareImaging, badgeLeCnam]);

SkillListItem gaugeNetMaui = SkillListItem(
    skillKey: SkillKey.gaugeNetMaui,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: ".NET MAUI",
    iconAssetPath: "lib/assets/bubble_content/skill/net_maui.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeNpm = SkillListItem(
    skillKey: SkillKey.gaugeNpm,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "NPM",
    iconAssetPath: "lib/assets/bubble_content/skill/npm.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeObjectivec = SkillListItem(
    skillKey: SkillKey.gaugeObjectivec,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.language,
    title: "Objective C",
    iconAssetPath: "lib/assets/bubble_content/skill/objectivec.png",
    nbYearsPractice: .16,
    experiences: [
      badgeEvolucareMobile,
    ]);

SkillListItem gaugePandas = SkillListItem(
    skillKey: SkillKey.gaugePandas,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Pandas",
    iconAssetPath: "lib/assets/bubble_content/skill/pandas.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugePhp = SkillListItem(
    skillKey: SkillKey.gaugePhp,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "PHP 7",
    iconAssetPath: "lib/assets/bubble_content/skill/php.png",
    nbYearsPractice: 5.65,
    experiences: [
      badgePrastelSiteInterne,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
      badgeLeCnam,
      badgeGreta
    ]);

SkillListItem gaugePhpmyadmin = SkillListItem(
    skillKey: SkillKey.gaugePhpmyadmin,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "PhpMyAdmin",
    iconAssetPath: "lib/assets/bubble_content/skill/phpmyadmin.png",
    nbYearsPractice: 4.74,
    experiences: [badgeEvolucareImaging, badgeGreta]);

SkillListItem gaugePhpstorm = SkillListItem(
    skillKey: SkillKey.gaugePhpstorm,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "PhpStorm",
    iconAssetPath: "lib/assets/bubble_content/skill/phpstorm.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
      badgeEvolucareMobile,
      badgeEvolucareBorne,
    ]);

SkillListItem gaugePowerbi = SkillListItem(
    skillKey: SkillKey.gaugePowerbi,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Power BI",
    iconAssetPath: "lib/assets/bubble_content/skill/powerbi.png",
    nbYearsPractice: .33,
    experiences: [badgeAmiltonePowerBI]);

SkillListItem gaugePowershell = SkillListItem(
    skillKey: SkillKey.gaugePowershell,
    usage: SkillUsage.devops,
    type: SkillType.language,
    title: "PowerShell",
    iconAssetPath: "lib/assets/bubble_content/skill/powershell.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltoneIot,
    ]);

SkillListItem gaugePowerQuery = SkillListItem(
    skillKey: SkillKey.gaugePowerQuery,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Power Query",
    iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltonePowerBI,
    ]);

SkillListItem gaugePython = SkillListItem(
    skillKey: SkillKey.gaugePython,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.language,
    title: "Python",
    iconAssetPath: "lib/assets/bubble_content/skill/python.png",
    nbYearsPractice: 1.32,
    experiences: [badgeLeWagon, badgeAmiltoneIot, badgeGreta]);

SkillListItem gaugeQt = SkillListItem(
    skillKey: SkillKey.gaugeQt,
    usage: SkillUsage.webDevelopment,
    type: SkillType.language,
    title: "Qt",
    iconAssetPath: "lib/assets/bubble_content/skill/qt.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeReact = SkillListItem(
    skillKey: SkillKey.gaugeReact,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "React",
    iconAssetPath: "lib/assets/bubble_content/skill/react.png",
    nbYearsPractice: .16,
    experiences: []);

SkillListItem gaugeSafari = SkillListItem(
    skillKey: SkillKey.gaugeSafari,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Safari",
    iconAssetPath: "lib/assets/bubble_content/skill/safari.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeSeaborn = SkillListItem(
    skillKey: SkillKey.gaugeSeaborn,
    usage: SkillUsage.businessIntelligence,
    type: SkillType.tool,
    title: "Seaborn",
    iconAssetPath: "lib/assets/bubble_content/skill/seaborn.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeSharepoint = SkillListItem(
    skillKey: SkillKey.gaugeSharepoint,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "SharePoint",
    iconAssetPath: "lib/assets/bubble_content/skill/sharepoint.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltoneMigration,
    ]);

SkillListItem gaugeSlack = SkillListItem(
    skillKey: SkillKey.gaugeSlack,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Slack",
    iconAssetPath: "lib/assets/bubble_content/skill/slack.png",
    nbYearsPractice: 5.74,
    experiences: [badgeEvolucareImaging, badgeEvolucareMobile, badgeGreta]);

SkillListItem gaugeSql = SkillListItem(
    skillKey: SkillKey.gaugeSql,
    usage: SkillUsage.backend,
    type: SkillType.language,
    title: "SQL",
    iconAssetPath: "lib/assets/bubble_content/skill/sql.png",
    nbYearsPractice: 7.06,
    experiences: [badgeLeWagon, badgeAmiltonePowerBI, badgeLeCnam, badgeGreta]);

SkillListItem gaugeSqlserver = SkillListItem(
    skillKey: SkillKey.gaugeSqlserver,
    usage: SkillUsage.backend,
    type: SkillType.tool,
    title: "SQL Server",
    iconAssetPath: "lib/assets/bubble_content/skill/sqlserver.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltoneMigration,
      badgeAmiltoneIot,
      badgeAmiltonePowerBI,
    ]);

SkillListItem gaugeSqlite = SkillListItem(
    skillKey: SkillKey.gaugeSqlite,
    usage: SkillUsage.backend,
    type: SkillType.language,
    title: "SQLite",
    iconAssetPath: "lib/assets/bubble_content/skill/sqlite.png",
    nbYearsPractice: 4.91,
    experiences: [badgeEvolucareMobile]);

SkillListItem gaugeTensorflow = SkillListItem(
    skillKey: SkillKey.gaugeTensorflow,
    usage: SkillUsage.artificielIntelligence,
    type: SkillType.tool,
    title: "Tensorflow",
    iconAssetPath: "lib/assets/bubble_content/skill/tensorflow.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeThingsboard = SkillListItem(
    skillKey: SkillKey.gaugeThingsboard,
    usage: SkillUsage.backend,
    type: SkillType.tool,
    title: "Thingsboard",
    iconAssetPath: "lib/assets/bubble_content/skill/thingsboard.png",
    nbYearsPractice: .33,
    experiences: [badgeAmiltoneIot]);

SkillListItem gaugeTomcat = SkillListItem(
    skillKey: SkillKey.gaugeTomcat,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Tomcat",
    iconAssetPath: "lib/assets/bubble_content/skill/tomcat.png",
    nbYearsPractice: .16,
    experiences: [badgeLeCnam]);

SkillListItem gaugeTrello = SkillListItem(
    skillKey: SkillKey.gaugeTrello,
    usage: SkillUsage.teamWork,
    type: SkillType.tool,
    title: "Trello",
    iconAssetPath: "lib/assets/bubble_content/skill/trello.png",
    nbYearsPractice: 0.83,
    experiences: [badgeGreta]);

SkillListItem gaugeUml = SkillListItem(
    skillKey: SkillKey.gaugeUml,
    usage: SkillUsage.teamWork,
    type: SkillType.language,
    title: "UML",
    iconAssetPath: "lib/assets/bubble_content/skill/uml.png",
    nbYearsPractice: 5.74,
    experiences: [badgeEvolucareImaging, badgeEvolucareMobile, badgeLeCnam]);

SkillListItem gaugeVisualStudio2022 = SkillListItem(
    skillKey: SkillKey.gaugeVisualStudio2022,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Visual Studio 2022",
    iconAssetPath: "lib/assets/bubble_content/skill/visual_studio_2022.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeVscode = SkillListItem(
    skillKey: SkillKey.gaugeVscode,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Visual Studio Code",
    iconAssetPath: "lib/assets/bubble_content/skill/vscode.png",
    nbYearsPractice: .32,
    experiences: [badgeYardStick, badgeLeWagon]);

SkillListItem gaugeVmwareWorkstation = SkillListItem(
    skillKey: SkillKey.gaugeVmwareWorkstation,
    usage: SkillUsage.devops,
    type: SkillType.tool,
    title: "VMWare Workstation",
    iconAssetPath: "lib/assets/bubble_content/skill/vmware_workstation.png",
    nbYearsPractice: 0.83,
    experiences: [badgeGreta]);

SkillListItem gaugeWikipedia = SkillListItem(
    skillKey: SkillKey.gaugeWikipedia,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Wikipedia",
    iconAssetPath: "lib/assets/bubble_content/skill/wikipedia.png",
    nbYearsPractice: 4.3,
    experiences: [badgeUpec]);

SkillListItem gaugeWindows = SkillListItem(
    skillKey: SkillKey.gaugeWindows,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Windows",
    iconAssetPath: "lib/assets/bubble_content/skill/windows.png",
    nbYearsPractice: .99,
    experiences: [badgeLeWagon, badgeEvolucareBorne, badgeGreta]);

SkillListItem gaugeWindowsserver = SkillListItem(
    skillKey: SkillKey.gaugeWindowsserver,
    usage: SkillUsage.other,
    type: SkillType.tool,
    title: "Windows Server",
    iconAssetPath: "lib/assets/bubble_content/skill/windowsserver.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltoneMigration,
    ]);

SkillListItem gaugeWordpress = SkillListItem(
    skillKey: SkillKey.gaugeWordpress,
    usage: SkillUsage.webDevelopment,
    type: SkillType.tool,
    title: "Wordpress",
    iconAssetPath: "lib/assets/bubble_content/skill/wordpress.png",
    nbYearsPractice: 0.83,
    experiences: [badgeGreta]);

SkillListItem gaugeWso2 = SkillListItem(
    skillKey: SkillKey.gaugeWso2,
    usage: SkillUsage.backend,
    type: SkillType.tool,
    title: "WSO2",
    iconAssetPath: "lib/assets/bubble_content/skill/wso2.png",
    nbYearsPractice: .16,
    experiences: [
      badgeAmiltoneWSO2,
    ]);

SkillListItem gaugeXamarin = SkillListItem(
    skillKey: SkillKey.gaugeXamarin,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "Xamarin",
    iconAssetPath: "lib/assets/bubble_content/skill/xamarin.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeXcode = SkillListItem(
    skillKey: SkillKey.gaugeXcode,
    usage: SkillUsage.mobileDevelopment,
    type: SkillType.tool,
    title: "XCode",
    iconAssetPath: "lib/assets/bubble_content/skill/xcode.png",
    nbYearsPractice: 6.74,
    experiences: [
      badgePrastelBT,
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeXml = SkillListItem(
    skillKey: SkillKey.gaugeXml,
    usage: SkillUsage.other,
    type: SkillType.language,
    title: "XML",
    iconAssetPath: "lib/assets/bubble_content/skill/xml.png",
    nbYearsPractice: 4.07,
    experiences: [
      badgeAmiltoneWSO2,
      badgeEvolucareImaging,
    ]);

List<SkillListItem> skillList = [
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
  gaugeXml
];
