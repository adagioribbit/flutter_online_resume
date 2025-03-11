import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_list_item.dart'
    show SkillListItem;
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
        gaugeXml;

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

Future<void> sortSkillListAlphabetically(bool desc) async {
  if (desc) {
    skillList.sort((a, b) => b.title.compareTo(a.title));
  } else {
    skillList.sort((a, b) => a.title.compareTo(b.title));
  }
}

Future<void> sortSkillListBySkillType(bool desc) async {
  if (desc) {
    skillList.sort((a, b) {
      int cmp = Enum.compareByIndex(b.type, a.type);
      if (cmp != 0) return cmp;
      return b.title.compareTo(a.title);
    });
  } else {
    skillList.sort((a, b) {
      int cmp = Enum.compareByIndex(a.type, b.type);
      if (cmp != 0) return cmp;
      return a.title.compareTo(b.title);
    });
  }
}

Future<void> sortSkillListBySkillUsage(bool desc) async {
  if (desc) {
    skillList.sort((a, b) {
      int cmp = Enum.compareByIndex(b.usage, a.usage);
      if (cmp != 0) return cmp;
      return b.title.compareTo(a.title);
    });
  } else {
    skillList.sort((a, b) {
      int cmp = Enum.compareByIndex(a.usage, b.usage);
      if (cmp != 0) return cmp;
      return a.title.compareTo(b.title);
    });
  }
}

Future<void> sortSkillListByNbYearsPractice(bool desc) async {
  if (desc) {
    skillList.sort((a, b) => b.nbYearsPractice.compareTo(a.nbYearsPractice));
  } else {
    skillList.sort((a, b) => a.nbYearsPractice.compareTo(b.nbYearsPractice));
  }
}

Future<void> sortSkillListByDateLastUsed(bool desc) async {
  //skillList.sort((a, b) => a.someProperty.compareTo(b.someProperty));
}
