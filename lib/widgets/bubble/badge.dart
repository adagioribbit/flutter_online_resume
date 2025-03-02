import 'package:dossier_de_competences_web/helpers/colorchart.dart';
import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show ToolbarMenu, initialScrollIndex;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skills.dart'
    show
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
        gaugeXml,
        skillList;
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
      return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: onPressedClbk,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: .5, color: skillsSetButtonPalette.icon),
                    borderRadius:
                        BorderRadius.all(Radius.circular(titleFontSize)),
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
                      hoverColor: Colors.transparent,
                      icon: Image(
                          height: imageHeight,
                          image: AssetImage(iconAssetPath)),
                      onPressed: onPressedClbk,
                    ),
                    Text(title,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: titleFontSize))
                  ]))));
    });
  }
}

SkillBadge badgeAccess = SkillBadge(
    title: "Microsoft Access",
    iconAssetPath: "lib/assets/bubble_content/skill/access.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeAccess);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeAndroid = SkillBadge(
    title: "Android",
    iconAssetPath: "lib/assets/bubble_content/skill/android.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeAndroid);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeAndroidStudio = SkillBadge(
    title: "Android Studio",
    iconAssetPath: "lib/assets/bubble_content/skill/android_studio.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeAndroidStudio);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeAngular = SkillBadge(
    title: "Angular",
    iconAssetPath: "lib/assets/bubble_content/skill/angular.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeAngular);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeApacheServer = SkillBadge(
    title: "Apache Server",
    iconAssetPath: "lib/assets/bubble_content/skill/apache_server.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeApacheServer);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeAppStore = SkillBadge(
    title: "App Store",
    iconAssetPath: "lib/assets/bubble_content/appstore.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeAppstore);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeBash = SkillBadge(
    title: "Bash",
    iconAssetPath: "lib/assets/bubble_content/skill/bash.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeBash);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeBlender = SkillBadge(
    title: "Blender",
    iconAssetPath: "lib/assets/bubble_content/skill/blender.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeBlender);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeBluetooth = SkillBadge(
    title: "Bluetooth",
    iconAssetPath: "lib/assets/bubble_content/skill/bluetooth.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeBluetooth);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeBootstrap = SkillBadge(
    title: "Bootstrap",
    iconAssetPath: "lib/assets/bubble_content/skill/bootstrap.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeBootstrap);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeChrome = SkillBadge(
    title: "Chrome",
    iconAssetPath: "lib/assets/bubble_content/skill/chrome.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeChrome);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeColaboratory = SkillBadge(
    title: "Colaboratory",
    iconAssetPath: "lib/assets/bubble_content/skill/colaboratory.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeColaboratory);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeConfluence = SkillBadge(
    title: "Confluence",
    iconAssetPath: "lib/assets/bubble_content/skill/confluence.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeConfluence);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeCordova = SkillBadge(
    title: "Cordova",
    iconAssetPath: "lib/assets/bubble_content/skill/cordova.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeCordova);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeCplusplus = SkillBadge(
    title: "C++",
    iconAssetPath: "lib/assets/bubble_content/skill/cplusplus.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeCplusplus);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeCSharp = SkillBadge(
    title: "C#",
    iconAssetPath: "lib/assets/bubble_content/skill/csharp.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeCsharp);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeCSS3 = SkillBadge(
    title: "CSS 3",
    iconAssetPath: "lib/assets/bubble_content/skill/css3.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeCss3);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeDBeaver = SkillBadge(
    title: "DBeaver",
    iconAssetPath: "lib/assets/bubble_content/skill/dbeaver.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeDbeaver);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeDebian = SkillBadge(
    title: "Debian",
    iconAssetPath: "lib/assets/bubble_content/skill/debian.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeDebian);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeDocker = SkillBadge(
    title: "Docker",
    iconAssetPath: "lib/assets/bubble_content/skill/docker.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeDocker);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeEnglish = SkillBadge(
    title: "English",
    iconAssetPath: "lib/assets/appbar/uk_flag.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeUkFlag);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeExcel = SkillBadge(
    title: "Excel",
    iconAssetPath: "lib/assets/bubble_content/skill/excel.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeExcel);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeFastapi = SkillBadge(
    title: "FastAPI",
    iconAssetPath: "lib/assets/bubble_content/skill/fastapi.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeFastapi);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeFlutter = SkillBadge(
    title: "Flutter",
    iconAssetPath: "lib/assets/bubble_content/skill/flutter.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeFlutter);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeGit = SkillBadge(
    title: "Git",
    iconAssetPath: "lib/assets/bubble_content/skill/git.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeGit);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeGithub = SkillBadge(
    title: "Github",
    iconAssetPath: "lib/assets/bubble_content/skill/github.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeGithub);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeGitlab = SkillBadge(
    title: "Gitlab",
    iconAssetPath: "lib/assets/bubble_content/skill/gitlab.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeGitlab);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeGoogleDocs = SkillBadge(
    title: "Google Docs",
    iconAssetPath: "lib/assets/bubble_content/skill/google_docs.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeGoogleDocs);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeGooglePlay = SkillBadge(
    title: "Google Play",
    iconAssetPath: "lib/assets/bubble_content/google_play.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeGooglePlay);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeGradle = SkillBadge(
    title: "Gradle",
    iconAssetPath: "lib/assets/bubble_content/skill/gradle.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeGradle);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeHtml5 = SkillBadge(
    title: "Html 5",
    iconAssetPath: "lib/assets/bubble_content/skill/html5.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeHtml5);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeHuggingface = SkillBadge(
    title: "Huggingface",
    iconAssetPath: "lib/assets/bubble_content/skill/huggingface.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeHuggingface);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeIos = SkillBadge(
    title: "iOS",
    iconAssetPath: "lib/assets/bubble_content/skill/ios.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeIos);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeJava = SkillBadge(
    title: "Java",
    iconAssetPath: "lib/assets/bubble_content/skill/java.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeJava);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeJavascript = SkillBadge(
    title: "Javascript",
    iconAssetPath: "lib/assets/bubble_content/skill/javascript.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeJavascript);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeJira = SkillBadge(
    title: "Jira",
    iconAssetPath: "lib/assets/bubble_content/skill/jira.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeJira);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeJQuery = SkillBadge(
    title: "JQuery",
    iconAssetPath: "lib/assets/bubble_content/skill/jquery.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeJquery);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeJson = SkillBadge(
    title: "Json",
    iconAssetPath: "lib/assets/bubble_content/skill/json.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeJson);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeJupyter = SkillBadge(
    title: "Jupyter",
    iconAssetPath: "lib/assets/bubble_content/skill/jupyter.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeJupyter);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeKaggle = SkillBadge(
    title: "Kaggle",
    iconAssetPath: "lib/assets/bubble_content/skill/kaggle.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeKaggle);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeKeras = SkillBadge(
    title: "Keras",
    iconAssetPath: "lib/assets/bubble_content/skill/keras.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeKeras);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeRobertCollins = SkillBadge(
    title: "Le Robert & Collins",
    iconAssetPath: "lib/assets/bubble_content/skill/lerobert.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeLerobert);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeMacos = SkillBadge(
    title: "Macos",
    iconAssetPath: "lib/assets/bubble_content/skill/macos.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeMacos);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeMailchimp = SkillBadge(
    title: "Mailchimp",
    iconAssetPath: "lib/assets/bubble_content/skill/mailchimp.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeMailchimp);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeMariaDB = SkillBadge(
    title: "MariaDB",
    iconAssetPath: "lib/assets/bubble_content/skill/mariadb.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeMariadb);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeMatplotlib = SkillBadge(
    title: "Matplotlib",
    iconAssetPath: "lib/assets/bubble_content/skill/matplotlib.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeMatplotlib);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeMySQL = SkillBadge(
    title: "MySQL",
    iconAssetPath: "lib/assets/bubble_content/skill/mysql.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeMysql);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeNetBeans = SkillBadge(
    title: "NetBeans",
    iconAssetPath: "lib/assets/bubble_content/skill/netbeans.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeNetbeans);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeNetMaui = SkillBadge(
    title: ".NET MAUI",
    iconAssetPath: "lib/assets/bubble_content/skill/net_maui.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeNetMaui);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeNpm = SkillBadge(
    title: "NPM",
    iconAssetPath: "lib/assets/bubble_content/skill/npm.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeNpm);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeObjectiveC = SkillBadge(
    title: "Objective C",
    iconAssetPath: "lib/assets/bubble_content/skill/objectivec.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeObjectivec);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePandas = SkillBadge(
    title: "Pandas",
    iconAssetPath: "lib/assets/bubble_content/skill/pandas.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePandas);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePhp = SkillBadge(
    title: "PHP 7",
    iconAssetPath: "lib/assets/bubble_content/skill/php.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePhp);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePhpMyAdmin = SkillBadge(
    title: "PhpMyAdmin",
    iconAssetPath: "lib/assets/bubble_content/skill/phpmyadmin.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePhpmyadmin);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePhpStorm = SkillBadge(
    title: "PhpStorm",
    iconAssetPath: "lib/assets/bubble_content/skill/phpstorm.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePhpstorm);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePowerBI = SkillBadge(
    title: "Power BI",
    iconAssetPath: "lib/assets/bubble_content/skill/powerbi.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePowerbi);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePowerShell = SkillBadge(
    title: "PowerShell",
    iconAssetPath: "lib/assets/bubble_content/skill/powershell.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePowershell);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePowerQuery = SkillBadge(
    title: "Power Query",
    iconAssetPath: "lib/assets/bubble_content/skill/microsoft.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePowerQuery);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgePython = SkillBadge(
    title: "Python",
    iconAssetPath: "lib/assets/bubble_content/skill/python.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugePython);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeQt = SkillBadge(
    title: "Qt",
    iconAssetPath: "lib/assets/bubble_content/skill/qt.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeQt);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeReact = SkillBadge(
    title: "React",
    iconAssetPath: "lib/assets/bubble_content/skill/react.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeReact);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeSafari = SkillBadge(
    title: "Safari",
    iconAssetPath: "lib/assets/bubble_content/skill/safari.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeSafari);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeSeaborn = SkillBadge(
    title: "Seaborn",
    iconAssetPath: "lib/assets/bubble_content/skill/seaborn.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeSeaborn);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeSharePoint = SkillBadge(
    title: "SharePoint",
    iconAssetPath: "lib/assets/bubble_content/skill/sharepoint.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeSharepoint);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeSlack = SkillBadge(
    title: "Slack",
    iconAssetPath: "lib/assets/bubble_content/skill/slack.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeSlack);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeSQL = SkillBadge(
    title: "SQL",
    iconAssetPath: "lib/assets/bubble_content/skill/sql.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeSql);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeSQLServer = SkillBadge(
    title: "SQL Server",
    iconAssetPath: "lib/assets/bubble_content/skill/sqlserver.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeSqlserver);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeSQLite = SkillBadge(
    title: "SQLite",
    iconAssetPath: "lib/assets/bubble_content/skill/sqlite.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeSqlite);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeStackoverflow = SkillBadge(
    title: "Stackoverflow",
    iconAssetPath: "lib/assets/bubble_content/skill/stackoverflow.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeStackoverflow);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeTensorflow = SkillBadge(
    title: "Tensorflow",
    iconAssetPath: "lib/assets/bubble_content/skill/tensorflow.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeTensorflow);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeThingsboard = SkillBadge(
    title: "Thingsboard",
    iconAssetPath: "lib/assets/bubble_content/skill/thingsboard.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeThingsboard);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeTomcat = SkillBadge(
    title: "Tomcat",
    iconAssetPath: "lib/assets/bubble_content/skill/tomcat.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeTomcat);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeTrello = SkillBadge(
    title: "Trello",
    iconAssetPath: "lib/assets/bubble_content/skill/trello.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeTrello);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeUML = SkillBadge(
    title: "UML",
    iconAssetPath: "lib/assets/bubble_content/skill/uml.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeUml);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeVisualStudio2022 = SkillBadge(
    title: "Visual Studio 2022",
    iconAssetPath: "lib/assets/bubble_content/skill/visual_studio_2022.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeVisualStudio2022);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeVMWareWorkstation = SkillBadge(
    title: "VMWare Workstation",
    iconAssetPath: "lib/assets/bubble_content/skill/vmware_workstation.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeVmwareWorkstation);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeVSCode = SkillBadge(
    title: "Visual Studio Code",
    iconAssetPath: "lib/assets/bubble_content/skill/vscode.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeVscode);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeWikipedia = SkillBadge(
    title: "Wikipedia",
    iconAssetPath: "lib/assets/bubble_content/skill/wikipedia.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeWikipedia);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeWindows = SkillBadge(
    title: "Windows",
    iconAssetPath: "lib/assets/bubble_content/skill/windows.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeWindows);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeWindowsServer = SkillBadge(
    title: "Windows Server",
    iconAssetPath: "lib/assets/bubble_content/skill/windowsserver.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeWindowsserver);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeWordpress = SkillBadge(
    title: "Wordpress",
    iconAssetPath: "lib/assets/bubble_content/skill/wordpress.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeWordpress);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeWSO2 = SkillBadge(
    title: "WSO2",
    iconAssetPath: "lib/assets/bubble_content/skill/wso2.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeWso2);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeXamarin = SkillBadge(
    title: "Xamarin",
    iconAssetPath: "lib/assets/bubble_content/skill/xamarin.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeXamarin);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeXCode = SkillBadge(
    title: "XCode",
    iconAssetPath: "lib/assets/bubble_content/skill/xcode.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeXcode);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });

SkillBadge badgeXML = SkillBadge(
    title: "XML",
    iconAssetPath: "lib/assets/bubble_content/skill/xml.png",
    onPressedClbk: () {
      initialScrollIndex.value = skillList.indexOf(gaugeXml);
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
    });
