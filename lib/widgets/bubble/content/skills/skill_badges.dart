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
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
    show SkillBadge;

SkillBadge badgeAccess = SkillBadge(
    "Microsoft Access", "lib/assets/bubble_content/skill/access.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeAccess);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAndroid =
    SkillBadge("Android", "lib/assets/bubble_content/skill/android.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeAndroid);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAndroidStudio = SkillBadge(
    "Android Studio", "lib/assets/bubble_content/skill/android_studio.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeAndroidStudio);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAngular =
    SkillBadge("Angular", "lib/assets/bubble_content/skill/angular.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeAngular);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeApacheServer = SkillBadge(
    "Apache Server", "lib/assets/bubble_content/skill/apache_server.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeApacheServer);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeAppStore =
    SkillBadge("App Store", "lib/assets/bubble_content/appstore.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeAppstore);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBash =
    SkillBadge("Bash", "lib/assets/bubble_content/skill/bash.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeBash);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBlender =
    SkillBadge("Blender", "lib/assets/bubble_content/skill/blender.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeBlender);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBluetooth = SkillBadge(
    "Bluetooth", "lib/assets/bubble_content/skill/bluetooth.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeBluetooth);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeBootstrap = SkillBadge(
    "Bootstrap", "lib/assets/bubble_content/skill/bootstrap.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeBootstrap);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeChrome =
    SkillBadge("Chrome", "lib/assets/bubble_content/skill/chrome.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeChrome);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeColaboratory = SkillBadge(
    "Colaboratory", "lib/assets/bubble_content/skill/colaboratory.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeColaboratory);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeConfluence = SkillBadge(
    "Confluence", "lib/assets/bubble_content/skill/confluence.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeConfluence);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCordova =
    SkillBadge("Cordova", "lib/assets/bubble_content/skill/cordova.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeCordova);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCplusplus =
    SkillBadge("C++", "lib/assets/bubble_content/skill/cplusplus.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeCplusplus);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCSharp =
    SkillBadge("C#", "lib/assets/bubble_content/skill/csharp.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeCsharp);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeCSS3 =
    SkillBadge("CSS 3", "lib/assets/bubble_content/skill/css3.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeCss3);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeDBeaver =
    SkillBadge("DBeaver", "lib/assets/bubble_content/skill/dbeaver.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeDbeaver);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeDebian =
    SkillBadge("Debian", "lib/assets/bubble_content/skill/debian.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeDebian);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeDocker =
    SkillBadge("Docker", "lib/assets/bubble_content/skill/docker.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeDocker);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeEnglish =
    SkillBadge("English", "lib/assets/appbar/uk_flag.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeUkFlag);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeExcel =
    SkillBadge("Excel", "lib/assets/bubble_content/skill/excel.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeExcel);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeFastapi =
    SkillBadge("FastAPI", "lib/assets/bubble_content/skill/fastapi.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeFastapi);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeFlutter =
    SkillBadge("Flutter", "lib/assets/bubble_content/skill/flutter.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeFlutter);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGit =
    SkillBadge("Git", "lib/assets/bubble_content/skill/git.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeGit);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGithub =
    SkillBadge("Github", "lib/assets/bubble_content/skill/github.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeGithub);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGitlab =
    SkillBadge("Gitlab", "lib/assets/bubble_content/skill/gitlab.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeGitlab);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGoogleDocs = SkillBadge(
    "Google Docs", "lib/assets/bubble_content/skill/google_docs.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeGoogleDocs);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGooglePlay =
    SkillBadge("Google Play", "lib/assets/bubble_content/google_play.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeGooglePlay);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeGradle =
    SkillBadge("Gradle", "lib/assets/bubble_content/skill/gradle.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeGradle);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeHtml5 =
    SkillBadge("Html 5", "lib/assets/bubble_content/skill/html5.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeHtml5);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeHuggingface = SkillBadge(
    "Huggingface", "lib/assets/bubble_content/skill/huggingface.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeHuggingface);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeIos =
    SkillBadge("iOS", "lib/assets/bubble_content/skill/ios.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeIos);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJava =
    SkillBadge("Java", "lib/assets/bubble_content/skill/java.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeJava);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJavascript = SkillBadge(
    "Javascript", "lib/assets/bubble_content/skill/javascript.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeJavascript);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJira =
    SkillBadge("Jira", "lib/assets/bubble_content/skill/jira.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeJira);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJQuery =
    SkillBadge("JQuery", "lib/assets/bubble_content/skill/jquery.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeJquery);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJson =
    SkillBadge("Json", "lib/assets/bubble_content/skill/json.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeJson);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeJupyter =
    SkillBadge("Jupyter", "lib/assets/bubble_content/skill/jupyter.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeJupyter);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeKaggle =
    SkillBadge("Kaggle", "lib/assets/bubble_content/skill/kaggle.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeKaggle);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeKeras =
    SkillBadge("Keras", "lib/assets/bubble_content/skill/keras.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeKeras);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeRobertCollins = SkillBadge(
    "Le Robert & Collins", "lib/assets/bubble_content/skill/lerobert.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeLerobert);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMacos =
    SkillBadge("Macos", "lib/assets/bubble_content/skill/macos.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeMacos);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMailchimp = SkillBadge(
    "Mailchimp", "lib/assets/bubble_content/skill/mailchimp.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeMailchimp);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMariaDB =
    SkillBadge("MariaDB", "lib/assets/bubble_content/skill/mariadb.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeMariadb);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMatplotlib = SkillBadge(
    "Matplotlib", "lib/assets/bubble_content/skill/matplotlib.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeMatplotlib);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeMySQL =
    SkillBadge("MySQL", "lib/assets/bubble_content/skill/mysql.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeMysql);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeNetBeans =
    SkillBadge("NetBeans", "lib/assets/bubble_content/skill/netbeans.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeNetbeans);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeNetMaui =
    SkillBadge(".NET MAUI", "lib/assets/bubble_content/skill/net_maui.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeNetMaui);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeNpm =
    SkillBadge("NPM", "lib/assets/bubble_content/skill/npm.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeNpm);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeObjectiveC = SkillBadge(
    "Objective C", "lib/assets/bubble_content/skill/objectivec.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeObjectivec);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePandas =
    SkillBadge("Pandas", "lib/assets/bubble_content/skill/pandas.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePandas);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePhp =
    SkillBadge("PHP 7", "lib/assets/bubble_content/skill/php.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePhp);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePhpMyAdmin = SkillBadge(
    "PhpMyAdmin", "lib/assets/bubble_content/skill/phpmyadmin.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePhpmyadmin);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePhpStorm =
    SkillBadge("PhpStorm", "lib/assets/bubble_content/skill/phpstorm.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePhpstorm);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePowerBI =
    SkillBadge("Power BI", "lib/assets/bubble_content/skill/powerbi.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePowerbi);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePowerShell = SkillBadge(
    "PowerShell", "lib/assets/bubble_content/skill/powershell.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePowershell);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePowerQuery = SkillBadge(
    "Power Query", "lib/assets/bubble_content/skill/microsoft.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePowerQuery);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgePython =
    SkillBadge("Python", "lib/assets/bubble_content/skill/python.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugePython);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeQt =
    SkillBadge("Qt", "lib/assets/bubble_content/skill/qt.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeQt);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeReact =
    SkillBadge("React", "lib/assets/bubble_content/skill/react.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeReact);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSafari =
    SkillBadge("Safari", "lib/assets/bubble_content/skill/safari.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeSafari);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSeaborn =
    SkillBadge("Seaborn", "lib/assets/bubble_content/skill/seaborn.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeSeaborn);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSharePoint = SkillBadge(
    "SharePoint", "lib/assets/bubble_content/skill/sharepoint.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeSharepoint);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSlack =
    SkillBadge("Slack", "lib/assets/bubble_content/skill/slack.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeSlack);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSQL =
    SkillBadge("SQL", "lib/assets/bubble_content/skill/sql.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeSql);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSQLServer = SkillBadge(
    "SQL Server", "lib/assets/bubble_content/skill/sqlserver.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeSqlserver);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeSQLite =
    SkillBadge("SQLite", "lib/assets/bubble_content/skill/sqlite.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeSqlite);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeStackoverflow = SkillBadge(
    "Stackoverflow", "lib/assets/bubble_content/skill/stackoverflow.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeStackoverflow);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeTensorflow = SkillBadge(
    "Tensorflow", "lib/assets/bubble_content/skill/tensorflow.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeTensorflow);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeThingsboard = SkillBadge(
    "Thingsboard", "lib/assets/bubble_content/skill/thingsboard.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeThingsboard);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeTomcat =
    SkillBadge("Tomcat", "lib/assets/bubble_content/skill/tomcat.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeTomcat);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeTrello =
    SkillBadge("Trello", "lib/assets/bubble_content/skill/trello.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeTrello);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeUML =
    SkillBadge("UML", "lib/assets/bubble_content/skill/uml.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeUml);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeVisualStudio2022 = SkillBadge("Visual Studio 2022",
    "lib/assets/bubble_content/skill/visual_studio_2022.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeVisualStudio2022);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeVMWareWorkstation = SkillBadge("VMWare Workstation",
    "lib/assets/bubble_content/skill/vmware_workstation.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeVmwareWorkstation);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeVSCode = SkillBadge(
    "Visual Studio Code", "lib/assets/bubble_content/skill/vscode.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeVscode);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWikipedia = SkillBadge(
    "Wikipedia", "lib/assets/bubble_content/skill/wikipedia.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeWikipedia);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWindows =
    SkillBadge("Windows", "lib/assets/bubble_content/skill/windows.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeWindows);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWindowsServer = SkillBadge(
    "Windows Server", "lib/assets/bubble_content/skill/windowsserver.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeWindowsserver);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWordpress = SkillBadge(
    "Wordpress", "lib/assets/bubble_content/skill/wordpress.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeWordpress);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeWSO2 =
    SkillBadge("WSO2", "lib/assets/bubble_content/skill/wso2.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeWso2);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeXamarin =
    SkillBadge("Xamarin", "lib/assets/bubble_content/skill/xamarin.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeXamarin);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeXCode =
    SkillBadge("XCode", "lib/assets/bubble_content/skill/xcode.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeXcode);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});

SkillBadge badgeXML =
    SkillBadge("XML", "lib/assets/bubble_content/skill/xml.png", () {
  initialScrollIndex.value = skillList.indexOf(gaugeXml);
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnSkillsSet);
});
