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
          iconAssetPath: "lib/assets/bubble_content/skill/access.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugeAndroid = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Android",
          iconAssetPath: "lib/assets/bubble_content/skill/android.png",
          nbYearsPractice: 6.9);
    });

ValueListenableBuilder gaugeAndroidStudio = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Android Studio",
          iconAssetPath: "lib/assets/bubble_content/skill/android_studio.png",
          nbYearsPractice: 7.75);
    });

ValueListenableBuilder gaugeAngular = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Angular",
          iconAssetPath: "lib/assets/bubble_content/skill/angular.png",
          nbYearsPractice: .08);
    });

ValueListenableBuilder gaugeApacheServer = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Apache Server",
          iconAssetPath: "lib/assets/bubble_content/skill/apache_server.png",
          nbYearsPractice: 3.99);
    });

ValueListenableBuilder gaugeAppstore = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "App Store",
          iconAssetPath: "lib/assets/bubble_content/appstore.png",
          nbYearsPractice: 5.74);
    });

ValueListenableBuilder gaugeBash = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Bash",
          iconAssetPath: "lib/assets/bubble_content/skill/bash.png",
          nbYearsPractice: 4.74);
    });

ValueListenableBuilder gaugeBlender = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Blender",
          iconAssetPath: "lib/assets/bubble_content/skill/blender.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeBluetooth = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Bluetooth",
          iconAssetPath: "lib/assets/bubble_content/skill/bluetooth.png",
          nbYearsPractice: 1.83);
    });

ValueListenableBuilder gaugeBootstrap = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Bootstrap",
          iconAssetPath: "lib/assets/bubble_content/skill/bootstrap.png",
          nbYearsPractice: 3.99);
    });

ValueListenableBuilder gaugeChrome = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Chrome",
          iconAssetPath: "lib/assets/bubble_content/skill/chrome.png",
          nbYearsPractice: 6.57);
    });

ValueListenableBuilder gaugeColaboratory = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Colaboratory",
          iconAssetPath: "lib/assets/bubble_content/skill/colaboratory.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeConfluence = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Confluence",
          iconAssetPath: "lib/assets/bubble_content/skill/confluence.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeCordova = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Cordova",
          iconAssetPath: "lib/assets/bubble_content/skill/cordova.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeCplusplus = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "C++",
          iconAssetPath: "lib/assets/bubble_content/skill/cplusplus.png",
          nbYearsPractice: 0.83);
    });

ValueListenableBuilder gaugeCsharp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "C#",
          iconAssetPath: "lib/assets/bubble_content/skill/csharp.png",
          nbYearsPractice: 1.99);
    });

ValueListenableBuilder gaugeCss3 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "CSS 3",
          iconAssetPath: "lib/assets/bubble_content/skill/css3.png",
          nbYearsPractice: 5.65);
    });

ValueListenableBuilder gaugeDbeaver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "DBeaver",
          iconAssetPath: "lib/assets/bubble_content/skill/dbeaver.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeDebian = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Debian",
          iconAssetPath: "lib/assets/bubble_content/skill/debian.png",
          nbYearsPractice: 5.98);
    });

ValueListenableBuilder gaugeDocker = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Docker",
          iconAssetPath: "lib/assets/bubble_content/skill/docker.png",
          nbYearsPractice: .99);
    });

ValueListenableBuilder gaugeUkFlag = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "English",
          iconAssetPath: "lib/assets/appbar/uk_flag.png",
          nbYearsPractice:
              (DateTime.now().difference(DateTime(2015, 9, 1)).inDays / 365));
    });

ValueListenableBuilder gaugeExcel = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Excel",
          iconAssetPath: "lib/assets/bubble_content/skill/excel.png",
          nbYearsPractice: 1.83);
    });

ValueListenableBuilder gaugeFastapi = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "FastAPI",
          iconAssetPath: "lib/assets/bubble_content/skill/fastapi.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeFlutter = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Flutter",
          iconAssetPath: "lib/assets/bubble_content/skill/flutter.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeGit = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Git",
          iconAssetPath: "lib/assets/bubble_content/skill/git.png",
          nbYearsPractice: 5.74);
    });

ValueListenableBuilder gaugeGithub = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Github",
          iconAssetPath: "lib/assets/bubble_content/skill/github.png",
          nbYearsPractice: 8.16);
    });

ValueListenableBuilder gaugeGitlab = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Gitlab",
          iconAssetPath: "lib/assets/bubble_content/skill/gitlab.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeGoogleDocs = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Google Docs",
          iconAssetPath: "lib/assets/bubble_content/skill/google_docs.png",
          nbYearsPractice: 1.16);
    });

ValueListenableBuilder gaugeGooglePlay = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Google Play",
          iconAssetPath: "lib/assets/bubble_content/google_play.png",
          nbYearsPractice: 5.74);
    });

ValueListenableBuilder gaugeGradle = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Gradle",
          iconAssetPath: "lib/assets/bubble_content/skill/gradle.png",
          nbYearsPractice: 4.99);
    });

ValueListenableBuilder gaugeHtml5 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Html 5",
          iconAssetPath: "lib/assets/bubble_content/skill/html5.png",
          nbYearsPractice: 5.65);
    });

ValueListenableBuilder gaugeHuggingface = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Huggingface",
          iconAssetPath: "lib/assets/bubble_content/skill/huggingface.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeIos = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "iOS",
          iconAssetPath: "lib/assets/bubble_content/skill/ios.png",
          nbYearsPractice: 6.74);
    });

ValueListenableBuilder gaugeJava = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Java",
          iconAssetPath: "lib/assets/bubble_content/skill/java.png",
          nbYearsPractice: 1.07);
    });

ValueListenableBuilder gaugeJavascript = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Javascript",
          iconAssetPath: "lib/assets/bubble_content/skill/javascript.png",
          nbYearsPractice: 5.57);
    });

ValueListenableBuilder gaugeJira = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Jira",
          iconAssetPath: "lib/assets/bubble_content/skill/jira.png",
          nbYearsPractice: 5.23);
    });

ValueListenableBuilder gaugeJquery = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "JQuery",
          iconAssetPath: "lib/assets/bubble_content/skill/jquery.png",
          nbYearsPractice: 3.99);
    });

ValueListenableBuilder gaugeJson = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Json",
          iconAssetPath: "lib/assets/bubble_content/skill/json.png",
          nbYearsPractice: 1.82);
    });

ValueListenableBuilder gaugeJupyter = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Jupyter",
          iconAssetPath: "lib/assets/bubble_content/skill/jupyter.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeKaggle = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Kaggle",
          iconAssetPath: "lib/assets/bubble_content/skill/kaggle.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeKeras = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Keras",
          iconAssetPath: "lib/assets/bubble_content/skill/keras.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeLerobert = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Le Robert & Collins",
          iconAssetPath: "lib/assets/bubble_content/skill/lerobert.png",
          nbYearsPractice: 7.2);
    });

ValueListenableBuilder gaugeMacos = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Macos",
          iconAssetPath: "lib/assets/bubble_content/skill/macos.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeMailchimp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Mailchimp",
          iconAssetPath: "lib/assets/bubble_content/skill/mailchimp.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeMariadb = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "MariaDB",
          iconAssetPath: "lib/assets/bubble_content/skill/mariadb.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeMatplotlib = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Matplotlib",
          iconAssetPath: "lib/assets/bubble_content/skill/matplotlib.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeMysql = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "MySQL",
          iconAssetPath: "lib/assets/bubble_content/skill/mysql.png",
          nbYearsPractice: 1.74);
    });

ValueListenableBuilder gaugeNetbeans = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "NetBeans",
          iconAssetPath: "lib/assets/bubble_content/skill/netbeans.png",
          nbYearsPractice: 0.99);
    });

ValueListenableBuilder gaugeNetMaui = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: ".NET MAUI",
          iconAssetPath: "lib/assets/bubble_content/skill/net_maui.png",
          nbYearsPractice: 1.83);
    });

ValueListenableBuilder gaugeNpm = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "NPM",
          iconAssetPath: "lib/assets/bubble_content/skill/npm.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeObjectivec = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Objective C",
          iconAssetPath: "lib/assets/bubble_content/skill/objectivec.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugePandas = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Pandas",
          iconAssetPath: "lib/assets/bubble_content/skill/pandas.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugePhp = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PHP 7",
          iconAssetPath: "lib/assets/bubble_content/skill/php.png",
          nbYearsPractice: 5.65);
    });

ValueListenableBuilder gaugePhpmyadmin = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PhpMyAdmin",
          iconAssetPath: "lib/assets/bubble_content/skill/phpmyadmin.png",
          nbYearsPractice: 4.74);
    });

ValueListenableBuilder gaugePhpstorm = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PhpStorm",
          iconAssetPath: "lib/assets/bubble_content/skill/phpstorm.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugePowerbi = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Power BI",
          iconAssetPath: "lib/assets/bubble_content/skill/powerbi.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugePowershell = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "PowerShell",
          iconAssetPath: "lib/assets/bubble_content/skill/powershell.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugePowerQuery = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Power Query",
          iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugePython = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          key: GlobalKeyRing.pythonGauge,
          title: "Python",
          iconAssetPath: "lib/assets/bubble_content/skill/python.png",
          nbYearsPractice: 1.32);
    });

ValueListenableBuilder gaugeQt = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Qt",
          iconAssetPath: "lib/assets/bubble_content/skill/qt.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeReact = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "React",
          iconAssetPath: "lib/assets/bubble_content/skill/react.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeSafari = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Safari",
          iconAssetPath: "lib/assets/bubble_content/skill/safari.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeSeaborn = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Seaborn",
          iconAssetPath: "lib/assets/bubble_content/skill/seaborn.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeSharepoint = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SharePoint",
          iconAssetPath: "lib/assets/bubble_content/skill/sharepoint.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugeSlack = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Slack",
          iconAssetPath: "lib/assets/bubble_content/skill/slack.png",
          nbYearsPractice: 5.74);
    });

ValueListenableBuilder gaugeSql = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SQL",
          iconAssetPath: "lib/assets/bubble_content/skill/sql.png",
          nbYearsPractice: 7.06);
    });

ValueListenableBuilder gaugeSqlserver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SQL Server",
          iconAssetPath: "lib/assets/bubble_content/skill/sqlserver.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugeSqlite = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "SQLite",
          iconAssetPath: "lib/assets/bubble_content/skill/sqlite.png",
          nbYearsPractice: 4.91);
    });

ValueListenableBuilder gaugeStackoverflow = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Stackoverflow",
          iconAssetPath: "lib/assets/bubble_content/skill/stackoverflow.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeTensorflow = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Tensorflow",
          iconAssetPath: "lib/assets/bubble_content/skill/tensorflow.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeThingsboard = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Thingsboard",
          iconAssetPath: "lib/assets/bubble_content/skill/thingsboard.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugeTomcat = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Tomcat",
          iconAssetPath: "lib/assets/bubble_content/skill/tomcat.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeTrello = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Trello",
          iconAssetPath: "lib/assets/bubble_content/skill/trello.png",
          nbYearsPractice: 0.83);
    });

ValueListenableBuilder gaugeUml = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "UML",
          iconAssetPath: "lib/assets/bubble_content/skill/uml.png",
          nbYearsPractice: 5.74);
    });

ValueListenableBuilder gaugeVisualStudio2022 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Visual Studio 2022",
          iconAssetPath:
              "lib/assets/bubble_content/skill/visual_studio_2022.png",
          nbYearsPractice: 1.83);
    });

ValueListenableBuilder gaugeVmwareWorkstation = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "VMWare Workstation",
          iconAssetPath:
              "lib/assets/bubble_content/skill/vmware_workstation.png",
          nbYearsPractice: 0.83);
    });

ValueListenableBuilder gaugeVscode = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Visual Studio Code",
          iconAssetPath: "lib/assets/bubble_content/skill/vscode.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeWikipedia = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Wikipedia",
          iconAssetPath: "lib/assets/bubble_content/skill/wikipedia.png",
          nbYearsPractice: 4.3);
    });

ValueListenableBuilder gaugeWindows = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Windows",
          iconAssetPath: "lib/assets/bubble_content/skill/windows.png",
          nbYearsPractice: .99);
    });

ValueListenableBuilder gaugeWindowsserver = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Windows Server",
          iconAssetPath: "lib/assets/bubble_content/skill/windowsserver.png",
          nbYearsPractice: .33);
    });

ValueListenableBuilder gaugeWordpress = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Wordpress",
          iconAssetPath: "lib/assets/bubble_content/skill/wordpress.png",
          nbYearsPractice: 0.83);
    });

ValueListenableBuilder gaugeWso2 = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "WSO2",
          iconAssetPath: "lib/assets/bubble_content/skill/wso2.png",
          nbYearsPractice: .16);
    });

ValueListenableBuilder gaugeXamarin = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "Xamarin",
          iconAssetPath: "lib/assets/bubble_content/skill/xamarin.png",
          nbYearsPractice: 1.83);
    });

ValueListenableBuilder gaugeXcode = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "XCode",
          iconAssetPath: "lib/assets/bubble_content/skill/xcode.png",
          nbYearsPractice: 6.74);
    });

ValueListenableBuilder gaugeXml = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, value, widget) {
      return SkillListItem(
          title: "XML",
          iconAssetPath: "lib/assets/bubble_content/skill/xml.png",
          nbYearsPractice: 4.07);
    });

List<Widget> skillList = [
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
