import 'package:dossier_de_competences_web/helpers/globals.dart' show SkillKey;
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
        badgePrastelSiteInterne;

SkillListItem gaugeAccess = SkillListItem(
    skillKey: SkillKey.gaugeAccess,
    title: "Microsoft Access",
    iconAssetPath: "lib/assets/bubble_content/skill/access.png",
    nbYearsPractice: .33,
    experiences: [badgeAmiltoneMigration]);

SkillListItem gaugeAndroid = SkillListItem(
    skillKey: SkillKey.gaugeAndroid,
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
    title: "Angular",
    iconAssetPath: "lib/assets/bubble_content/skill/angular.png",
    nbYearsPractice: .08,
    experiences: [badgeEvolucareBorne]);

SkillListItem gaugeApacheServer = SkillListItem(
    skillKey: SkillKey.gaugeApacheServer,
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
    title: "App Store",
    iconAssetPath: "lib/assets/bubble_content/appstore.png",
    nbYearsPractice: 5.74,
    experiences: [badgePrastelBT, badgeEvolucareMobile]);

SkillListItem gaugeBash = SkillListItem(
    skillKey: SkillKey.gaugeBash,
    title: "Bash",
    iconAssetPath: "lib/assets/bubble_content/skill/bash.png",
    nbYearsPractice: 4.74,
    experiences: [badgeEvolucareImaging, badgeLeCnam]);

SkillListItem gaugeBlender = SkillListItem(
    skillKey: SkillKey.gaugeBlender,
    title: "Blender",
    iconAssetPath: "lib/assets/bubble_content/skill/blender.png",
    nbYearsPractice: .16,
    experiences: [badgePrastelBT]);

SkillListItem gaugeBluetooth = SkillListItem(
    skillKey: SkillKey.gaugeBluetooth,
    title: "Bluetooth",
    iconAssetPath: "lib/assets/bubble_content/skill/bluetooth.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeBootstrap = SkillListItem(
    skillKey: SkillKey.gaugeBootstrap,
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
    title: "Chrome",
    iconAssetPath: "lib/assets/bubble_content/skill/chrome.png",
    nbYearsPractice: 6.57,
    experiences: [
      badgeLeCnam,
      badgeEvolucareImaging,
      badgeEvolucareBorne,
      badgeGreta
    ]);

SkillListItem gaugeColaboratory = SkillListItem(
    skillKey: SkillKey.gaugeColaboratory,
    title: "Colaboratory",
    iconAssetPath: "lib/assets/bubble_content/skill/colaboratory.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeConfluence = SkillListItem(
    skillKey: SkillKey.gaugeConfluence,
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
    title: "Cordova",
    iconAssetPath: "lib/assets/bubble_content/skill/cordova.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeCplusplus = SkillListItem(
    skillKey: SkillKey.gaugeCplusplus,
    title: "C++",
    iconAssetPath: "lib/assets/bubble_content/skill/cplusplus.png",
    nbYearsPractice: 0.83,
    experiences: [badgeLeCnam]);

SkillListItem gaugeCsharp = SkillListItem(
    skillKey: SkillKey.gaugeCsharp,
    title: "C#",
    iconAssetPath: "lib/assets/bubble_content/skill/csharp.png",
    nbYearsPractice: 1.99,
    experiences: [
      badgePrastelBT,
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeCss3 = SkillListItem(
    skillKey: SkillKey.gaugeCss3,
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

SkillListItem gaugeDbeaver = SkillListItem(
    skillKey: SkillKey.gaugeDbeaver,
    title: "DBeaver",
    iconAssetPath: "lib/assets/bubble_content/skill/dbeaver.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeDebian = SkillListItem(
    skillKey: SkillKey.gaugeDebian,
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
    title: "Docker",
    iconAssetPath: "lib/assets/bubble_content/skill/docker.png",
    nbYearsPractice: .99,
    experiences: [badgeLeWagon, badgeLeCnam]);

SkillListItem gaugeUkFlag = SkillListItem(
    skillKey: SkillKey.gaugeUkFlag,
    title: "English",
    iconAssetPath: "lib/assets/appbar/uk_flag.png",
    nbYearsPractice:
        (DateTime.now().difference(DateTime(2015, 9, 1)).inDays / 365),
    experiences: [badgeUpec]);

SkillListItem gaugeExcel = SkillListItem(
    skillKey: SkillKey.gaugeExcel,
    title: "Excel",
    iconAssetPath: "lib/assets/bubble_content/skill/excel.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeFastapi = SkillListItem(
    skillKey: SkillKey.gaugeFastapi,
    title: "FastAPI",
    iconAssetPath: "lib/assets/bubble_content/skill/fastapi.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeFlutter = SkillListItem(
    skillKey: SkillKey.gaugeFlutter,
    title: "Flutter",
    iconAssetPath: "lib/assets/bubble_content/skill/flutter.png",
    nbYearsPractice: .16,
    experiences: []);

SkillListItem gaugeGit = SkillListItem(
    skillKey: SkillKey.gaugeGit,
    title: "Git",
    iconAssetPath: "lib/assets/bubble_content/skill/git.png",
    nbYearsPractice: 5.74,
    experiences: [
      badgePrastelBT,
      badgePrastelSiteInterne,
    ]);

SkillListItem gaugeGithub = SkillListItem(
    skillKey: SkillKey.gaugeGithub,
    title: "Github",
    iconAssetPath: "lib/assets/bubble_content/skill/github.png",
    nbYearsPractice: 8.16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeGitlab = SkillListItem(
    skillKey: SkillKey.gaugeGitlab,
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
    title: "Google Docs",
    iconAssetPath: "lib/assets/bubble_content/skill/google_docs.png",
    nbYearsPractice: 1.16,
    experiences: [badgeAmiltoneMigration, badgeGreta]);

SkillListItem gaugeGooglePlay = SkillListItem(
    skillKey: SkillKey.gaugeGooglePlay,
    title: "Google Play",
    iconAssetPath: "lib/assets/bubble_content/google_play.png",
    nbYearsPractice: 5.74,
    experiences: [badgePrastelBT, badgePrastelCRN15M]);

SkillListItem gaugeGradle = SkillListItem(
    skillKey: SkillKey.gaugeGradle,
    title: "Gradle",
    iconAssetPath: "lib/assets/bubble_content/skill/gradle.png",
    nbYearsPractice: 4.99,
    experiences: [
      badgePrastelCRN15M,
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeHtml5 = SkillListItem(
    skillKey: SkillKey.gaugeHtml5,
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
    title: "Huggingface",
    iconAssetPath: "lib/assets/bubble_content/skill/huggingface.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeIos = SkillListItem(
    skillKey: SkillKey.gaugeIos,
    title: "iOS",
    iconAssetPath: "lib/assets/bubble_content/skill/ios.png",
    nbYearsPractice: 6.74,
    experiences: [
      badgePrastelBT,
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeJava = SkillListItem(
    skillKey: SkillKey.gaugeJava,
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
    title: "Jupyter",
    iconAssetPath: "lib/assets/bubble_content/skill/jupyter.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeKaggle = SkillListItem(
    skillKey: SkillKey.gaugeKaggle,
    title: "Kaggle",
    iconAssetPath: "lib/assets/bubble_content/skill/kaggle.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeKeras = SkillListItem(
    skillKey: SkillKey.gaugeKeras,
    title: "Keras",
    iconAssetPath: "lib/assets/bubble_content/skill/keras.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeLerobert = SkillListItem(
    skillKey: SkillKey.gaugeLerobert,
    title: "Le Robert & Collins",
    iconAssetPath: "lib/assets/bubble_content/skill/lerobert.png",
    nbYearsPractice: 7.2,
    experiences: [badgeUpec]);

SkillListItem gaugeMacos = SkillListItem(
    skillKey: SkillKey.gaugeMacos,
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
    title: "Mailchimp",
    iconAssetPath: "lib/assets/bubble_content/skill/mailchimp.png",
    nbYearsPractice: .16,
    experiences: [badgeGreta]);

SkillListItem gaugeMariadb = SkillListItem(
    skillKey: SkillKey.gaugeMariadb,
    title: "MariaDB",
    iconAssetPath: "lib/assets/bubble_content/skill/mariadb.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeMatplotlib = SkillListItem(
    skillKey: SkillKey.gaugeMatplotlib,
    title: "Matplotlib",
    iconAssetPath: "lib/assets/bubble_content/skill/matplotlib.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeMysql = SkillListItem(
    skillKey: SkillKey.gaugeMysql,
    title: "MySQL",
    iconAssetPath: "lib/assets/bubble_content/skill/mysql.png",
    nbYearsPractice: 1.74,
    experiences: [badgePrastelSiteInterne, badgeLeCnam, badgeGreta]);

SkillListItem gaugeNetbeans = SkillListItem(
    skillKey: SkillKey.gaugeNetbeans,
    title: "NetBeans",
    iconAssetPath: "lib/assets/bubble_content/skill/netbeans.png",
    nbYearsPractice: 0.99,
    experiences: [badgeEvolucareImaging, badgeLeCnam]);

SkillListItem gaugeNetMaui = SkillListItem(
    skillKey: SkillKey.gaugeNetMaui,
    title: ".NET MAUI",
    iconAssetPath: "lib/assets/bubble_content/skill/net_maui.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeNpm = SkillListItem(
    skillKey: SkillKey.gaugeNpm,
    title: "NPM",
    iconAssetPath: "lib/assets/bubble_content/skill/npm.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeObjectivec = SkillListItem(
    skillKey: SkillKey.gaugeObjectivec,
    title: "Objective C",
    iconAssetPath: "lib/assets/bubble_content/skill/objectivec.png",
    nbYearsPractice: .16,
    experiences: [
      badgeEvolucareMobile,
    ]);

SkillListItem gaugePandas = SkillListItem(
    skillKey: SkillKey.gaugePandas,
    title: "Pandas",
    iconAssetPath: "lib/assets/bubble_content/skill/pandas.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugePhp = SkillListItem(
    skillKey: SkillKey.gaugePhp,
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
    title: "PhpMyAdmin",
    iconAssetPath: "lib/assets/bubble_content/skill/phpmyadmin.png",
    nbYearsPractice: 4.74,
    experiences: [badgeEvolucareImaging, badgeGreta]);

SkillListItem gaugePhpstorm = SkillListItem(
    skillKey: SkillKey.gaugePhpstorm,
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
    title: "Power BI",
    iconAssetPath: "lib/assets/bubble_content/skill/powerbi.png",
    nbYearsPractice: .33,
    experiences: [badgeAmiltonePowerBI]);

SkillListItem gaugePowershell = SkillListItem(
    skillKey: SkillKey.gaugePowershell,
    title: "PowerShell",
    iconAssetPath: "lib/assets/bubble_content/skill/powershell.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltoneIot,
    ]);

SkillListItem gaugePowerQuery = SkillListItem(
    skillKey: SkillKey.gaugePowerQuery,
    title: "Power Query",
    iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltonePowerBI,
    ]);

SkillListItem gaugePython = SkillListItem(
    skillKey: SkillKey.gaugePython,
    title: "Python",
    iconAssetPath: "lib/assets/bubble_content/skill/python.png",
    nbYearsPractice: 1.32,
    experiences: [badgeLeWagon, badgeAmiltoneIot, badgeGreta]);

SkillListItem gaugeQt = SkillListItem(
    skillKey: SkillKey.gaugeQt,
    title: "Qt",
    iconAssetPath: "lib/assets/bubble_content/skill/qt.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeReact = SkillListItem(
    skillKey: SkillKey.gaugeReact,
    title: "React",
    iconAssetPath: "lib/assets/bubble_content/skill/react.png",
    nbYearsPractice: .16,
    experiences: []);

SkillListItem gaugeSafari = SkillListItem(
    skillKey: SkillKey.gaugeSafari,
    title: "Safari",
    iconAssetPath: "lib/assets/bubble_content/skill/safari.png",
    nbYearsPractice: 4.91,
    experiences: [
      badgeEvolucareImaging,
    ]);

SkillListItem gaugeSeaborn = SkillListItem(
    skillKey: SkillKey.gaugeSeaborn,
    title: "Seaborn",
    iconAssetPath: "lib/assets/bubble_content/skill/seaborn.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeSharepoint = SkillListItem(
    skillKey: SkillKey.gaugeSharepoint,
    title: "SharePoint",
    iconAssetPath: "lib/assets/bubble_content/skill/sharepoint.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltoneMigration,
    ]);

SkillListItem gaugeSlack = SkillListItem(
    skillKey: SkillKey.gaugeSlack,
    title: "Slack",
    iconAssetPath: "lib/assets/bubble_content/skill/slack.png",
    nbYearsPractice: 5.74,
    experiences: [badgeEvolucareImaging, badgeEvolucareMobile, badgeGreta]);

SkillListItem gaugeSql = SkillListItem(
    skillKey: SkillKey.gaugeSql,
    title: "SQL",
    iconAssetPath: "lib/assets/bubble_content/skill/sql.png",
    nbYearsPractice: 7.06,
    experiences: [badgeLeWagon, badgeAmiltonePowerBI, badgeLeCnam, badgeGreta]);

SkillListItem gaugeSqlserver = SkillListItem(
    skillKey: SkillKey.gaugeSqlserver,
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
    title: "SQLite",
    iconAssetPath: "lib/assets/bubble_content/skill/sqlite.png",
    nbYearsPractice: 4.91,
    experiences: [badgeEvolucareMobile]);

SkillListItem gaugeTensorflow = SkillListItem(
    skillKey: SkillKey.gaugeTensorflow,
    title: "Tensorflow",
    iconAssetPath: "lib/assets/bubble_content/skill/tensorflow.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeThingsboard = SkillListItem(
    skillKey: SkillKey.gaugeThingsboard,
    title: "Thingsboard",
    iconAssetPath: "lib/assets/bubble_content/skill/thingsboard.png",
    nbYearsPractice: .33,
    experiences: [badgeAmiltoneIot]);

SkillListItem gaugeTomcat = SkillListItem(
    skillKey: SkillKey.gaugeTomcat,
    title: "Tomcat",
    iconAssetPath: "lib/assets/bubble_content/skill/tomcat.png",
    nbYearsPractice: .16,
    experiences: [badgeLeCnam]);

SkillListItem gaugeTrello = SkillListItem(
    skillKey: SkillKey.gaugeTrello,
    title: "Trello",
    iconAssetPath: "lib/assets/bubble_content/skill/trello.png",
    nbYearsPractice: 0.83,
    experiences: [badgeGreta]);

SkillListItem gaugeUml = SkillListItem(
    skillKey: SkillKey.gaugeUml,
    title: "UML",
    iconAssetPath: "lib/assets/bubble_content/skill/uml.png",
    nbYearsPractice: 5.74,
    experiences: [badgeEvolucareImaging, badgeEvolucareMobile, badgeLeCnam]);

SkillListItem gaugeVisualStudio2022 = SkillListItem(
    skillKey: SkillKey.gaugeVisualStudio2022,
    title: "Visual Studio 2022",
    iconAssetPath: "lib/assets/bubble_content/skill/visual_studio_2022.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeVscode = SkillListItem(
    skillKey: SkillKey.gaugeVscode,
    title: "Visual Studio Code",
    iconAssetPath: "lib/assets/bubble_content/skill/vscode.png",
    nbYearsPractice: .16,
    experiences: [badgeLeWagon]);

SkillListItem gaugeVmwareWorkstation = SkillListItem(
    skillKey: SkillKey.gaugeVmwareWorkstation,
    title: "VMWare Workstation",
    iconAssetPath: "lib/assets/bubble_content/skill/vmware_workstation.png",
    nbYearsPractice: 0.83,
    experiences: [badgeGreta]);

SkillListItem gaugeWikipedia = SkillListItem(
    skillKey: SkillKey.gaugeWikipedia,
    title: "Wikipedia",
    iconAssetPath: "lib/assets/bubble_content/skill/wikipedia.png",
    nbYearsPractice: 4.3,
    experiences: [badgeUpec]);

SkillListItem gaugeWindows = SkillListItem(
    skillKey: SkillKey.gaugeWindows,
    title: "Windows",
    iconAssetPath: "lib/assets/bubble_content/skill/windows.png",
    nbYearsPractice: .99,
    experiences: [badgeLeWagon, badgeEvolucareBorne, badgeGreta]);

SkillListItem gaugeWindowsserver = SkillListItem(
    skillKey: SkillKey.gaugeWindowsserver,
    title: "Windows Server",
    iconAssetPath: "lib/assets/bubble_content/skill/windowsserver.png",
    nbYearsPractice: .33,
    experiences: [
      badgeAmiltoneMigration,
    ]);

SkillListItem gaugeWordpress = SkillListItem(
    skillKey: SkillKey.gaugeWordpress,
    title: "Wordpress",
    iconAssetPath: "lib/assets/bubble_content/skill/wordpress.png",
    nbYearsPractice: 0.83,
    experiences: [badgeGreta]);

SkillListItem gaugeWso2 = SkillListItem(
    skillKey: SkillKey.gaugeWso2,
    title: "WSO2",
    iconAssetPath: "lib/assets/bubble_content/skill/wso2.png",
    nbYearsPractice: .16,
    experiences: [
      badgeAmiltoneWSO2,
    ]);

SkillListItem gaugeXamarin = SkillListItem(
    skillKey: SkillKey.gaugeXamarin,
    title: "Xamarin",
    iconAssetPath: "lib/assets/bubble_content/skill/xamarin.png",
    nbYearsPractice: 1.83,
    experiences: [badgePrastelBT]);

SkillListItem gaugeXcode = SkillListItem(
    skillKey: SkillKey.gaugeXcode,
    title: "XCode",
    iconAssetPath: "lib/assets/bubble_content/skill/xcode.png",
    nbYearsPractice: 6.74,
    experiences: [
      badgePrastelBT,
      badgeEvolucareMobile,
    ]);

SkillListItem gaugeXml = SkillListItem(
    skillKey: SkillKey.gaugeXml,
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
