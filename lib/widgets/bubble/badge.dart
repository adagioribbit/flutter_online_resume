import 'dart:math' show min;

import 'package:dossier_de_competences_web/helpers/colorchart.dart';
import 'package:flutter/material.dart';

class SkillBadge extends StatelessWidget {
  final String title, iconAssetPath;
  final double iconHeight;
  final VoidCallback? onPressedClbk;

  const SkillBadge(
      {required this.onPressedClbk,
      required this.title,
      required this.iconAssetPath,
      this.iconHeight = 25.0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double titleFontSize = (constraints.maxWidth * 0.023).clamp(13, 18),
          imageHeight = constraints.maxWidth * 0.08;
      return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: .5, color: skillsSetButtonPalette.icon),
            borderRadius: BorderRadius.all(Radius.circular(titleFontSize)),
            boxShadow: [
              BoxShadow(
                color: skillsSetButtonPalette.iconHover,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
          ),
          margin: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
          padding: EdgeInsets.all(5),
          child: Column(children: [
            IconButton(
              icon:
                  Image(height: imageHeight, image: AssetImage(iconAssetPath)),
              onPressed: onPressedClbk,
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize))
          ]));
    });
  }
}

SkillBadge badgeAccess = SkillBadge(
    title: "Microsoft Access",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/access.png",
    onPressedClbk: () {});

SkillBadge badgeAdobe = SkillBadge(
    title: "Adobe",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/adobe.png",
    onPressedClbk: () {});

SkillBadge badgeAndroid = SkillBadge(
    title: "Android",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/android.png",
    onPressedClbk: () {});

SkillBadge badgeAndroidStudio = SkillBadge(
    title: "Android Studio",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/android_studio.png",
    onPressedClbk: () {});

SkillBadge badgeAngular = SkillBadge(
    title: "Angular",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/angular.png",
    onPressedClbk: () {});

SkillBadge badgeApacheServer = SkillBadge(
    title: "Apache Server",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/apache_server.png",
    onPressedClbk: () {});

SkillBadge badgeAppStore = SkillBadge(
    title: "App Store",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/appstore.png",
    onPressedClbk: () {});

SkillBadge badgeBash = SkillBadge(
    title: "Bash",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/bash.png",
    onPressedClbk: () {});

SkillBadge badgeBlender = SkillBadge(
    title: "Blender",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/blender.png",
    onPressedClbk: () {});

SkillBadge badgeBluetooth = SkillBadge(
    title: "Bluetooth",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/bluetooth.png",
    onPressedClbk: () {});

SkillBadge badgeBootstrap = SkillBadge(
    title: "Bootstrap",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/bootstrap.png",
    onPressedClbk: () {});

SkillBadge badgeChrome = SkillBadge(
    title: "Chrome",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/chrome.png",
    onPressedClbk: () {});

SkillBadge badgeColaboratory = SkillBadge(
    title: "Colaboratory",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/colaboratory.png",
    onPressedClbk: () {});

SkillBadge badgeConfluence = SkillBadge(
    title: "Confluence",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/confluence.png",
    onPressedClbk: () {});

SkillBadge badgeCordova = SkillBadge(
    title: "Cordova",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/cordova.png",
    onPressedClbk: () {});

SkillBadge badgeCplusplus = SkillBadge(
    title: "C++",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/cplusplus.png",
    onPressedClbk: () {});

SkillBadge badgeCSharp = SkillBadge(
    title: "C#",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/csharp.png",
    onPressedClbk: () {});

SkillBadge badgeCSS3 = SkillBadge(
    title: "CSS 3",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/css3.png",
    onPressedClbk: () {});

SkillBadge badgeDBeaver = SkillBadge(
    title: "DBeaver",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/dbeaver.png",
    onPressedClbk: () {});

SkillBadge badgeDebian = SkillBadge(
    title: "Debian",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/debian.png",
    onPressedClbk: () {});

SkillBadge badgeDocker = SkillBadge(
    title: "Docker",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/docker.png",
    onPressedClbk: () {});

SkillBadge badgeEnglish = SkillBadge(
    title: "English",
    iconAssetPath: "lib/assets/appbar/uk_flag.png",
    onPressedClbk: () {});

SkillBadge badgeExcel = SkillBadge(
    title: "Excel",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/excel.png",
    onPressedClbk: () {});

SkillBadge badgeFastapi = SkillBadge(
    title: "FastAPI",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/fastapi.png",
    onPressedClbk: () {});

SkillBadge badgeFlutter = SkillBadge(
    title: "Flutter",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/flutter.png",
    onPressedClbk: () {});

SkillBadge badgeGit = SkillBadge(
    title: "Git",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/git.png",
    onPressedClbk: () {});

SkillBadge badgeGithub = SkillBadge(
    title: "Github",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/github.png",
    onPressedClbk: () {});

SkillBadge badgeGitlab = SkillBadge(
    title: "Gitlab",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/gitlab.png",
    onPressedClbk: () {});

SkillBadge badgeGoogleDocs = SkillBadge(
    title: "Google Docs",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/google_docs.png",
    onPressedClbk: () {});

SkillBadge badgeGooglePlay = SkillBadge(
    title: "Google Play",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/google_play.png",
    onPressedClbk: () {});

SkillBadge badgeGradle = SkillBadge(
    title: "Gradle",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/gradle.png",
    onPressedClbk: () {});

SkillBadge badgeHtml5 = SkillBadge(
    title: "Html 5",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/html5.png",
    onPressedClbk: () {});

SkillBadge badgeHuggingface = SkillBadge(
    title: "Huggingface",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/huggingface.png",
    onPressedClbk: () {});

SkillBadge badgeIos = SkillBadge(
    title: "iOS",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/ios.png",
    onPressedClbk: () {});

SkillBadge badgeJava = SkillBadge(
    title: "Java",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/java.png",
    onPressedClbk: () {});

SkillBadge badgeJavascript = SkillBadge(
    title: "Javascript",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/javascript.png",
    onPressedClbk: () {});

SkillBadge badgeJira = SkillBadge(
    title: "Jira",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/jira.png",
    onPressedClbk: () {});

SkillBadge badgeJQuery = SkillBadge(
    title: "JQuery",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/jquery.png",
    onPressedClbk: () {});

SkillBadge badgeJson = SkillBadge(
    title: "Json",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/json.png",
    onPressedClbk: () {});

SkillBadge badgeJupyter = SkillBadge(
    title: "Jupyter",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/jupyter.png",
    onPressedClbk: () {});

SkillBadge badgeKaggle = SkillBadge(
    title: "Kaggle",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/kaggle.png",
    onPressedClbk: () {});

SkillBadge badgeKeras = SkillBadge(
    title: "Keras",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/keras.png",
    onPressedClbk: () {});

SkillBadge badgeRobertCollins = SkillBadge(
    title: "Le Robert & Collins",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/lerobert.png",
    onPressedClbk: () {});

SkillBadge badgeMacos = SkillBadge(
    title: "Macos",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/macos.png",
    onPressedClbk: () {});

SkillBadge badgeMailchimp = SkillBadge(
    title: "Mailchimp",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/mailchimp.png",
    onPressedClbk: () {});

SkillBadge badgeMariaDB = SkillBadge(
    title: "MariaDB",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/mariadb.png",
    onPressedClbk: () {});

SkillBadge badgeMatplotlib = SkillBadge(
    title: "Matplotlib",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/matplotlib.png",
    onPressedClbk: () {});

SkillBadge badgeMicrosoft = SkillBadge(
    title: "Microsoft",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/microsoft.png",
    onPressedClbk: () {});

SkillBadge badgeMySQL = SkillBadge(
    title: "MySQL",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/mysql.png",
    onPressedClbk: () {});

SkillBadge badgeNetBeans = SkillBadge(
    title: "NetBeans",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/netbeans.png",
    onPressedClbk: () {});

SkillBadge badgeNetMaui = SkillBadge(
    title: ".NET MAUI",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/net_maui.png",
    onPressedClbk: () {});

SkillBadge badgeNpm = SkillBadge(
    title: "NPM",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/npm.png",
    onPressedClbk: () {});

SkillBadge badgeObjectiveC = SkillBadge(
    title: "Objective C",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/objectivec.png",
    onPressedClbk: () {});

SkillBadge badgePandas = SkillBadge(
    title: "Pandas",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/pandas.png",
    onPressedClbk: () {});

SkillBadge badgePhp = SkillBadge(
    title: "PHP 7",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/php.png",
    onPressedClbk: () {});

SkillBadge badgePhpMyAdmin = SkillBadge(
    title: "PhpMyAdmin",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/phpmyadmin.png",
    onPressedClbk: () {});

SkillBadge badgePhpStorm = SkillBadge(
    title: "PhpStorm",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/phpstorm.png",
    onPressedClbk: () {});

SkillBadge badgePowerBI = SkillBadge(
    title: "Power BI",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/powerbi.png",
    onPressedClbk: () {});

SkillBadge badgePowerShell = SkillBadge(
    title: "PowerShell",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/powershell.png",
    onPressedClbk: () {});

SkillBadge badgePowerQuery = SkillBadge(
    title: "Power Query",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/microsoft.png",
    onPressedClbk: () {});

SkillBadge badgePython = SkillBadge(
    title: "Python",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/python.png",
    onPressedClbk: () {});

SkillBadge badgeQt = SkillBadge(
    title: "Qt",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/qt.png",
    onPressedClbk: () {});

SkillBadge badgeReact = SkillBadge(
    title: "React",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/react.png",
    onPressedClbk: () {});

SkillBadge badgeSafari = SkillBadge(
    title: "Safari",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/safari.png",
    onPressedClbk: () {});

SkillBadge badgeSeaborn = SkillBadge(
    title: "Seaborn",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/seaborn.png",
    onPressedClbk: () {});

SkillBadge badgeSharePoint = SkillBadge(
    title: "SharePoint",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/sharepoint.png",
    onPressedClbk: () {});

SkillBadge badgeSlack = SkillBadge(
    title: "Slack",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/slack.png",
    onPressedClbk: () {});

SkillBadge badgeSQL = SkillBadge(
    title: "SQL",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/sql.png",
    onPressedClbk: () {});

SkillBadge badgeSQLServer = SkillBadge(
    title: "SQL Server",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/sqlserver.png",
    onPressedClbk: () {});

SkillBadge badgeSQLite = SkillBadge(
    title: "SQLite",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/sqlite.png",
    onPressedClbk: () {});

SkillBadge badgeStackoverflow = SkillBadge(
    title: "Stackoverflow",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/stackoverflow.png",
    onPressedClbk: () {});

SkillBadge badgeTensorflow = SkillBadge(
    title: "Tensorflow",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/tensorflow.png",
    onPressedClbk: () {});

SkillBadge badgeThingsboard = SkillBadge(
    title: "Thingsboard",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/thingsboard.png",
    onPressedClbk: () {});

SkillBadge badgeTomcat = SkillBadge(
    title: "Tomcat",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/tomcat.png",
    onPressedClbk: () {});

SkillBadge badgeTrello = SkillBadge(
    title: "Trello",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/trello.png",
    onPressedClbk: () {});

SkillBadge badgeUML = SkillBadge(
    title: "UML",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/uml.png",
    onPressedClbk: () {});

SkillBadge badgeVisualStudio2022 = SkillBadge(
    title: "Visual Studio 2022",
    iconAssetPath:
        "lib/assets/bubble_content/skill_badge/visual_studio_2022.png",
    onPressedClbk: () {});

SkillBadge badgeVMWareWorkstation = SkillBadge(
    title: "VMWare Workstation",
    iconAssetPath:
        "lib/assets/bubble_content/skill_badge/vmware_workstation.png",
    onPressedClbk: () {});

SkillBadge badgeVSCode = SkillBadge(
    title: "Visual Studio Code",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/vscode.png",
    onPressedClbk: () {});

SkillBadge badgeWikipedia = SkillBadge(
    title: "Wikipedia",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/wikipedia.png",
    onPressedClbk: () {});

SkillBadge badgeWindows = SkillBadge(
    title: "Windows",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/windows.png",
    onPressedClbk: () {});

SkillBadge badgeWindowsServer = SkillBadge(
    title: "Windows Server",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/windowsserver.png",
    onPressedClbk: () {});

SkillBadge badgeWordpress = SkillBadge(
    title: "Wordpress",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/wordpress.png",
    onPressedClbk: () {});

SkillBadge badgeWSO2 = SkillBadge(
    title: "WSO2",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/wso2.png",
    onPressedClbk: () {});

SkillBadge badgeXamarin = SkillBadge(
    title: "Xamarin",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/xamarin.png",
    onPressedClbk: () {});

SkillBadge badgeXCode = SkillBadge(
    title: "XCode",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/xcode.png",
    onPressedClbk: () {});

SkillBadge badgeXML = SkillBadge(
    title: "XML",
    iconAssetPath: "lib/assets/bubble_content/skill_badge/xml.png",
    onPressedClbk: () {});
