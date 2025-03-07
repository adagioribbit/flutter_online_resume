import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show ToolbarMenu, SkillKey, initialScrollSkillItem;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
    show SkillBadge;

SkillBadge badgeAccess = SkillBadge(
    "Microsoft Access", "lib/assets/bubble_content/skill/access.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeAccess;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAndroid =
    SkillBadge("Android", "lib/assets/bubble_content/skill/android.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeAndroid;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAndroidStudio = SkillBadge(
    "Android Studio", "lib/assets/bubble_content/skill/android_studio.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeAndroidStudio;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAngular =
    SkillBadge("Angular", "lib/assets/bubble_content/skill/angular.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeAngular;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeApacheServer = SkillBadge(
    "Apache Server", "lib/assets/bubble_content/skill/apache_server.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeApacheServer;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAppStore =
    SkillBadge("App Store", "lib/assets/bubble_content/appstore.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeAppstore;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBash =
    SkillBadge("Bash", "lib/assets/bubble_content/skill/bash.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeBash;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBlender =
    SkillBadge("Blender", "lib/assets/bubble_content/skill/blender.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeBlender;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBluetooth = SkillBadge(
    "Bluetooth", "lib/assets/bubble_content/skill/bluetooth.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeBluetooth;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBootstrap = SkillBadge(
    "Bootstrap", "lib/assets/bubble_content/skill/bootstrap.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeBootstrap;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeChrome =
    SkillBadge("Chrome", "lib/assets/bubble_content/skill/chrome.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeChrome;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeColaboratory = SkillBadge(
    "Colaboratory", "lib/assets/bubble_content/skill/colaboratory.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeColaboratory;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeConfluence = SkillBadge(
    "Confluence", "lib/assets/bubble_content/skill/confluence.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeConfluence;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCordova =
    SkillBadge("Cordova", "lib/assets/bubble_content/skill/cordova.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeCordova;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCplusplus =
    SkillBadge("C++", "lib/assets/bubble_content/skill/cplusplus.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeCplusplus;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCSharp =
    SkillBadge("C#", "lib/assets/bubble_content/skill/csharp.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeCsharp;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCSS3 =
    SkillBadge("CSS 3", "lib/assets/bubble_content/skill/css3.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeCss3;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeDart =
    SkillBadge("Dart", "lib/assets/bubble_content/skill/dart.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeDart;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeDBeaver =
    SkillBadge("DBeaver", "lib/assets/bubble_content/skill/dbeaver.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeDbeaver;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeDebian =
    SkillBadge("Debian", "lib/assets/bubble_content/skill/debian.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeDebian;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeDocker =
    SkillBadge("Docker", "lib/assets/bubble_content/skill/docker.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeDocker;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeEnglish =
    SkillBadge("English", "lib/assets/appbar/uk_flag.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeUkFlag;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeExcel =
    SkillBadge("Excel", "lib/assets/bubble_content/skill/excel.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeExcel;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeFastapi =
    SkillBadge("FastAPI", "lib/assets/bubble_content/skill/fastapi.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeFastapi;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeFlutter =
    SkillBadge("Flutter", "lib/assets/bubble_content/skill/flutter.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeFlutter;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGit =
    SkillBadge("Git", "lib/assets/bubble_content/skill/git.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeGit;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGithub =
    SkillBadge("Github", "lib/assets/bubble_content/skill/github.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeGithub;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGitlab =
    SkillBadge("Gitlab", "lib/assets/bubble_content/skill/gitlab.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeGitlab;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGoogleDocs = SkillBadge(
    "Google Docs", "lib/assets/bubble_content/skill/google_docs.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeGoogleDocs;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGooglePlay =
    SkillBadge("Google Play", "lib/assets/bubble_content/google_play.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeGooglePlay;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGradle =
    SkillBadge("Gradle", "lib/assets/bubble_content/skill/gradle.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeGradle;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeHtml5 =
    SkillBadge("Html 5", "lib/assets/bubble_content/skill/html5.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeHtml5;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeHuggingface = SkillBadge(
    "Huggingface", "lib/assets/bubble_content/skill/huggingface.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeHuggingface;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeIos =
    SkillBadge("iOS", "lib/assets/bubble_content/skill/ios.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeIos;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJava =
    SkillBadge("Java", "lib/assets/bubble_content/skill/java.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeJava;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJavascript = SkillBadge(
    "Javascript", "lib/assets/bubble_content/skill/javascript.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeJavascript;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJira =
    SkillBadge("Jira", "lib/assets/bubble_content/skill/jira.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeJira;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJQuery =
    SkillBadge("JQuery", "lib/assets/bubble_content/skill/jquery.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeJquery;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJson =
    SkillBadge("Json", "lib/assets/bubble_content/skill/json.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeJson;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJupyter =
    SkillBadge("Jupyter", "lib/assets/bubble_content/skill/jupyter.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeJupyter;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeKaggle =
    SkillBadge("Kaggle", "lib/assets/bubble_content/skill/kaggle.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeKaggle;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeKeras =
    SkillBadge("Keras", "lib/assets/bubble_content/skill/keras.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeKeras;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeRobertCollins = SkillBadge(
    "Le Robert & Collins", "lib/assets/bubble_content/skill/lerobert.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeLerobert;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMacos =
    SkillBadge("Macos", "lib/assets/bubble_content/skill/macos.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeMacos;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMailchimp = SkillBadge(
    "Mailchimp", "lib/assets/bubble_content/skill/mailchimp.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeMailchimp;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMariaDB =
    SkillBadge("MariaDB", "lib/assets/bubble_content/skill/mariadb.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeMariadb;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMatplotlib = SkillBadge(
    "Matplotlib", "lib/assets/bubble_content/skill/matplotlib.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeMatplotlib;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMySQL =
    SkillBadge("MySQL", "lib/assets/bubble_content/skill/mysql.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeMysql;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeNetBeans =
    SkillBadge("NetBeans", "lib/assets/bubble_content/skill/netbeans.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeNetbeans;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeNetMaui =
    SkillBadge(".NET MAUI", "lib/assets/bubble_content/skill/net_maui.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeNetMaui;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeNpm =
    SkillBadge("NPM", "lib/assets/bubble_content/skill/npm.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeNpm;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeObjectiveC = SkillBadge(
    "Objective C", "lib/assets/bubble_content/skill/objectivec.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeObjectivec;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePandas =
    SkillBadge("Pandas", "lib/assets/bubble_content/skill/pandas.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePandas;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePhp =
    SkillBadge("PHP 7", "lib/assets/bubble_content/skill/php.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePhp;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePhpMyAdmin = SkillBadge(
    "PhpMyAdmin", "lib/assets/bubble_content/skill/phpmyadmin.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePhpmyadmin;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePhpStorm =
    SkillBadge("PhpStorm", "lib/assets/bubble_content/skill/phpstorm.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePhpstorm;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePowerBI =
    SkillBadge("Power BI", "lib/assets/bubble_content/skill/powerbi.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePowerbi;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePowerShell = SkillBadge(
    "PowerShell", "lib/assets/bubble_content/skill/powershell.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePowershell;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePowerQuery = SkillBadge(
    "Power Query", "lib/assets/bubble_content/skill/microsoft.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePowerQuery;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePython =
    SkillBadge("Python", "lib/assets/bubble_content/skill/python.png", () {
  initialScrollSkillItem.value = SkillKey.gaugePython;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeQt =
    SkillBadge("Qt", "lib/assets/bubble_content/skill/qt.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeQt;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeReact =
    SkillBadge("React", "lib/assets/bubble_content/skill/react.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeReact;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSafari =
    SkillBadge("Safari", "lib/assets/bubble_content/skill/safari.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeSafari;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSeaborn =
    SkillBadge("Seaborn", "lib/assets/bubble_content/skill/seaborn.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeSeaborn;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSharePoint = SkillBadge(
    "SharePoint", "lib/assets/bubble_content/skill/sharepoint.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeSharepoint;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSlack =
    SkillBadge("Slack", "lib/assets/bubble_content/skill/slack.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeSlack;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSQL =
    SkillBadge("SQL", "lib/assets/bubble_content/skill/sql.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeSql;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSQLServer = SkillBadge(
    "SQL Server", "lib/assets/bubble_content/skill/sqlserver.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeSqlserver;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSQLite =
    SkillBadge("SQLite", "lib/assets/bubble_content/skill/sqlite.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeSqlite;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeTensorflow = SkillBadge(
    "Tensorflow", "lib/assets/bubble_content/skill/tensorflow.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeTensorflow;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeThingsboard = SkillBadge(
    "Thingsboard", "lib/assets/bubble_content/skill/thingsboard.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeThingsboard;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeTomcat =
    SkillBadge("Tomcat", "lib/assets/bubble_content/skill/tomcat.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeTomcat;
  initialScrollSkillItem.value = SkillKey.gaugeTomcat;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeTrello =
    SkillBadge("Trello", "lib/assets/bubble_content/skill/trello.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeTrello;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeUML =
    SkillBadge("UML", "lib/assets/bubble_content/skill/uml.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeUml;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeVisualStudio2022 = SkillBadge("Visual Studio 2022",
    "lib/assets/bubble_content/skill/visual_studio_2022.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeVisualStudio2022;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeVMWareWorkstation = SkillBadge("VMWare Workstation",
    "lib/assets/bubble_content/skill/vmware_workstation.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeVmwareWorkstation;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeVSCode = SkillBadge(
    "Visual Studio Code", "lib/assets/bubble_content/skill/vscode.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeVscode;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWikipedia = SkillBadge(
    "Wikipedia", "lib/assets/bubble_content/skill/wikipedia.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeWikipedia;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWindows =
    SkillBadge("Windows", "lib/assets/bubble_content/skill/windows.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeWindows;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWindowsServer = SkillBadge(
    "Windows Server", "lib/assets/bubble_content/skill/windowsserver.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeWindowsserver;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWordpress = SkillBadge(
    "Wordpress", "lib/assets/bubble_content/skill/wordpress.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeWordpress;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWSO2 =
    SkillBadge("WSO2", "lib/assets/bubble_content/skill/wso2.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeWso2;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeXamarin =
    SkillBadge("Xamarin", "lib/assets/bubble_content/skill/xamarin.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeXamarin;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeXCode =
    SkillBadge("XCode", "lib/assets/bubble_content/skill/xcode.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeXcode;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeXML =
    SkillBadge("XML", "lib/assets/bubble_content/skill/xml.png", () {
  initialScrollSkillItem.value = SkillKey.gaugeXml;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});
