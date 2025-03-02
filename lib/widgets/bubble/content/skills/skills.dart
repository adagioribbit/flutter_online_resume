import 'package:dossier_de_competences_web/helpers/globals.dart'
    show GlobalKeyRing, appLanguage;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_list_item.dart'
    show SkillListItem;
import 'package:flutter/material.dart' show ValueListenableBuilder, Widget;

ValueListenableBuilder gaugeAccess = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Microsoft Access",
          iconAssetPath: "lib/assets/bubble_content/skill/access.png");
    });

ValueListenableBuilder gaugeAdobe = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Adobe",
          iconAssetPath: "lib/assets/bubble_content/skill/adobe.png");
    });

ValueListenableBuilder gaugeAndroid = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Android",
          iconAssetPath: "lib/assets/bubble_content/skill/android.png");
    });

ValueListenableBuilder gaugeAndroidStudio = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Android Studio",
          iconAssetPath: "lib/assets/bubble_content/skill/android_studio.png");
    });

ValueListenableBuilder gaugeAngular = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Angular",
          iconAssetPath: "lib/assets/bubble_content/skill/angular.png");
    });

ValueListenableBuilder gaugeApacheServer = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Apache Server",
          iconAssetPath: "lib/assets/bubble_content/skill/apache_server.png");
    });

ValueListenableBuilder gaugeAppstore = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "App Store",
          iconAssetPath: "lib/assets/bubble_content/appstore.png");
    });

ValueListenableBuilder gaugeBash = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Bash",
          iconAssetPath: "lib/assets/bubble_content/skill/bash.png");
    });

ValueListenableBuilder gaugeBlender = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Blender",
          iconAssetPath: "lib/assets/bubble_content/skill/blender.png");
    });

ValueListenableBuilder gaugeBluetooth = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Bluetooth",
          iconAssetPath: "lib/assets/bubble_content/skill/bluetooth.png");
    });

ValueListenableBuilder gaugeBootstrap = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Bootstrap",
          iconAssetPath: "lib/assets/bubble_content/skill/bootstrap.png");
    });

ValueListenableBuilder gaugeChrome = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Chrome",
          iconAssetPath: "lib/assets/bubble_content/skill/chrome.png");
    });

ValueListenableBuilder gaugeColaboratory = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Colaboratory",
          iconAssetPath: "lib/assets/bubble_content/skill/colaboratory.png");
    });

ValueListenableBuilder gaugeConfluence = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Confluence",
          iconAssetPath: "lib/assets/bubble_content/skill/confluence.png");
    });

ValueListenableBuilder gaugeCordova = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Cordova",
          iconAssetPath: "lib/assets/bubble_content/skill/cordova.png");
    });

ValueListenableBuilder gaugeCplusplus = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "C++",
          iconAssetPath: "lib/assets/bubble_content/skill/cplusplus.png");
    });

ValueListenableBuilder gaugeCsharp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "C#",
          iconAssetPath: "lib/assets/bubble_content/skill/csharp.png");
    });

ValueListenableBuilder gaugeCss3 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "CSS 3",
          iconAssetPath: "lib/assets/bubble_content/skill/css3.png");
    });

ValueListenableBuilder gaugeDbeaver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "DBeaver",
          iconAssetPath: "lib/assets/bubble_content/skill/dbeaver.png");
    });

ValueListenableBuilder gaugeDebian = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Debian",
          iconAssetPath: "lib/assets/bubble_content/skill/debian.png");
    });

ValueListenableBuilder gaugeDocker = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Docker",
          iconAssetPath: "lib/assets/bubble_content/skill/docker.png");
    });

ValueListenableBuilder gaugeUkFlag = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "English", iconAssetPath: "lib/assets/appbar/uk_flag.png");
    });

ValueListenableBuilder gaugeExcel = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Excel",
          iconAssetPath: "lib/assets/bubble_content/skill/excel.png");
    });

ValueListenableBuilder gaugeFastapi = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "FastAPI",
          iconAssetPath: "lib/assets/bubble_content/skill/fastapi.png");
    });

ValueListenableBuilder gaugeFlutter = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Flutter",
          iconAssetPath: "lib/assets/bubble_content/skill/flutter.png");
    });

ValueListenableBuilder gaugeGit = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Git",
          iconAssetPath: "lib/assets/bubble_content/skill/git.png");
    });

ValueListenableBuilder gaugeGithub = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Github",
          iconAssetPath: "lib/assets/bubble_content/skill/github.png");
    });

ValueListenableBuilder gaugeGitlab = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Gitlab",
          iconAssetPath: "lib/assets/bubble_content/skill/gitlab.png");
    });

ValueListenableBuilder gaugeGoogleDocs = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Google Docs",
          iconAssetPath: "lib/assets/bubble_content/skill/google_docs.png");
    });

ValueListenableBuilder gaugeGooglePlay = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Google Play",
          iconAssetPath: "lib/assets/bubble_content/google_play.png");
    });

ValueListenableBuilder gaugeGradle = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Gradle",
          iconAssetPath: "lib/assets/bubble_content/skill/gradle.png");
    });

ValueListenableBuilder gaugeHtml5 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Html 5",
          iconAssetPath: "lib/assets/bubble_content/skill/html5.png");
    });

ValueListenableBuilder gaugeHuggingface = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Huggingface",
          iconAssetPath: "lib/assets/bubble_content/skill/huggingface.png");
    });

ValueListenableBuilder gaugeIos = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "iOS",
          iconAssetPath: "lib/assets/bubble_content/skill/ios.png");
    });

ValueListenableBuilder gaugeJava = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Java",
          iconAssetPath: "lib/assets/bubble_content/skill/java.png");
    });

ValueListenableBuilder gaugeJavascript = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Javascript",
          iconAssetPath: "lib/assets/bubble_content/skill/javascript.png");
    });

ValueListenableBuilder gaugeJira = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Jira",
          iconAssetPath: "lib/assets/bubble_content/skill/jira.png");
    });

ValueListenableBuilder gaugeJquery = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "JQuery",
          iconAssetPath: "lib/assets/bubble_content/skill/jquery.png");
    });

ValueListenableBuilder gaugeJson = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Json",
          iconAssetPath: "lib/assets/bubble_content/skill/json.png");
    });

ValueListenableBuilder gaugeJupyter = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Jupyter",
          iconAssetPath: "lib/assets/bubble_content/skill/jupyter.png");
    });

ValueListenableBuilder gaugeKaggle = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Kaggle",
          iconAssetPath: "lib/assets/bubble_content/skill/kaggle.png");
    });

ValueListenableBuilder gaugeKeras = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Keras",
          iconAssetPath: "lib/assets/bubble_content/skill/keras.png");
    });

ValueListenableBuilder gaugeLerobert = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Le Robert & Collins",
          iconAssetPath: "lib/assets/bubble_content/skill/lerobert.png");
    });

ValueListenableBuilder gaugeMacos = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Macos",
          iconAssetPath: "lib/assets/bubble_content/skill/macos.png");
    });

ValueListenableBuilder gaugeMailchimp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Mailchimp",
          iconAssetPath: "lib/assets/bubble_content/skill/mailchimp.png");
    });

ValueListenableBuilder gaugeMariadb = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "MariaDB",
          iconAssetPath: "lib/assets/bubble_content/skill/mariadb.png");
    });

ValueListenableBuilder gaugeMatplotlib = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Matplotlib",
          iconAssetPath: "lib/assets/bubble_content/skill/matplotlib.png");
    });

ValueListenableBuilder gaugeMicrosoft = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Microsoft",
          iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png");
    });

ValueListenableBuilder gaugeMysql = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "MySQL",
          iconAssetPath: "lib/assets/bubble_content/skill/mysql.png");
    });

ValueListenableBuilder gaugeNetbeans = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "NetBeans",
          iconAssetPath: "lib/assets/bubble_content/skill/netbeans.png");
    });

ValueListenableBuilder gaugeNetMaui = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: ".NET MAUI",
          iconAssetPath: "lib/assets/bubble_content/skill/net_maui.png");
    });

ValueListenableBuilder gaugeNpm = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "NPM",
          iconAssetPath: "lib/assets/bubble_content/skill/npm.png");
    });

ValueListenableBuilder gaugeObjectivec = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Objective C",
          iconAssetPath: "lib/assets/bubble_content/skill/objectivec.png");
    });

ValueListenableBuilder gaugePandas = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Pandas",
          iconAssetPath: "lib/assets/bubble_content/skill/pandas.png");
    });

ValueListenableBuilder gaugePhp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PHP 7",
          iconAssetPath: "lib/assets/bubble_content/skill/php.png");
    });

ValueListenableBuilder gaugePhpmyadmin = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PhpMyAdmin",
          iconAssetPath: "lib/assets/bubble_content/skill/phpmyadmin.png");
    });

ValueListenableBuilder gaugePhpstorm = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PhpStorm",
          iconAssetPath: "lib/assets/bubble_content/skill/phpstorm.png");
    });

ValueListenableBuilder gaugePowerbi = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Power BI",
          iconAssetPath: "lib/assets/bubble_content/skill/powerbi.png");
    });

ValueListenableBuilder gaugePowershell = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PowerShell",
          iconAssetPath: "lib/assets/bubble_content/skill/powershell.png");
    });

ValueListenableBuilder gaugePowerQuery = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Power Query",
          iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png");
    });

ValueListenableBuilder gaugePython = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          key: GlobalKeyRing.pythonGauge,
          title: "Python",
          iconAssetPath: "lib/assets/bubble_content/skill/python.png");
    });

ValueListenableBuilder gaugeQt = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Qt", iconAssetPath: "lib/assets/bubble_content/skill/qt.png");
    });

ValueListenableBuilder gaugeReact = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "React",
          iconAssetPath: "lib/assets/bubble_content/skill/react.png");
    });

ValueListenableBuilder gaugeSafari = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Safari",
          iconAssetPath: "lib/assets/bubble_content/skill/safari.png");
    });

ValueListenableBuilder gaugeSeaborn = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Seaborn",
          iconAssetPath: "lib/assets/bubble_content/skill/seaborn.png");
    });

ValueListenableBuilder gaugeSharepoint = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SharePoint",
          iconAssetPath: "lib/assets/bubble_content/skill/sharepoint.png");
    });

ValueListenableBuilder gaugeSlack = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Slack",
          iconAssetPath: "lib/assets/bubble_content/skill/slack.png");
    });

ValueListenableBuilder gaugeSql = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SQL",
          iconAssetPath: "lib/assets/bubble_content/skill/sql.png");
    });

ValueListenableBuilder gaugeSqlserver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SQL Server",
          iconAssetPath: "lib/assets/bubble_content/skill/sqlserver.png");
    });

ValueListenableBuilder gaugeSqlite = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SQLite",
          iconAssetPath: "lib/assets/bubble_content/skill/sqlite.png");
    });

ValueListenableBuilder gaugeStackoverflow = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Stackoverflow",
          iconAssetPath: "lib/assets/bubble_content/skill/stackoverflow.png");
    });

ValueListenableBuilder gaugeTensorflow = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Tensorflow",
          iconAssetPath: "lib/assets/bubble_content/skill/tensorflow.png");
    });

ValueListenableBuilder gaugeThingsboard = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Thingsboard",
          iconAssetPath: "lib/assets/bubble_content/skill/thingsboard.png");
    });

ValueListenableBuilder gaugeTomcat = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Tomcat",
          iconAssetPath: "lib/assets/bubble_content/skill/tomcat.png");
    });

ValueListenableBuilder gaugeTrello = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Trello",
          iconAssetPath: "lib/assets/bubble_content/skill/trello.png");
    });

ValueListenableBuilder gaugeUml = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "UML",
          iconAssetPath: "lib/assets/bubble_content/skill/uml.png");
    });

ValueListenableBuilder gaugeVisualStudio2022 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Visual Studio 2022",
          iconAssetPath:
              "lib/assets/bubble_content/skill/visual_studio_2022.png");
    });

ValueListenableBuilder gaugeVmwareWorkstation = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "VMWare Workstation",
          iconAssetPath:
              "lib/assets/bubble_content/skill/vmware_workstation.png");
    });

ValueListenableBuilder gaugeVscode = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Visual Studio Code",
          iconAssetPath: "lib/assets/bubble_content/skill/vscode.png");
    });

ValueListenableBuilder gaugeWikipedia = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Wikipedia",
          iconAssetPath: "lib/assets/bubble_content/skill/wikipedia.png");
    });

ValueListenableBuilder gaugeWindows = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Windows",
          iconAssetPath: "lib/assets/bubble_content/skill/windows.png");
    });

ValueListenableBuilder gaugeWindowsserver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Windows Server",
          iconAssetPath: "lib/assets/bubble_content/skill/windowsserver.png");
    });

ValueListenableBuilder gaugeWordpress = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Wordpress",
          iconAssetPath: "lib/assets/bubble_content/skill/wordpress.png");
    });

ValueListenableBuilder gaugeWso2 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "WSO2",
          iconAssetPath: "lib/assets/bubble_content/skill/wso2.png");
    });

ValueListenableBuilder gaugeXamarin = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Xamarin",
          iconAssetPath: "lib/assets/bubble_content/skill/xamarin.png");
    });

ValueListenableBuilder gaugeXcode = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "XCode",
          iconAssetPath: "lib/assets/bubble_content/skill/xcode.png");
    });

ValueListenableBuilder gaugeXml = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
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
