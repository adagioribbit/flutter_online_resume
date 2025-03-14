import 'package:flutter/widgets.dart' show BuildContext, Color, Widget;

import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' show appLanguage;
import '../../../../external_link.dart' show ExternalLink;
import '../../skills/skill_badges.dart'
    show
        badgeColaboratory,
        badgeDBeaver,
        badgeDebian,
        badgeDocker,
        badgeFastapi,
        badgeGithub,
        badgeHuggingface,
        badgeJson,
        badgeJupyter,
        badgeKaggle,
        badgeKeras,
        badgeMatplotlib,
        badgePandas,
        badgePython,
        badgeSQL,
        badgeSeaborn,
        badgeTensorflow,
        badgeVSCode,
        badgeWindows,
        badgeCSS3,
        badgeChrome,
        badgeGoogleDocs,
        badgeHtml5,
        badgeJavascript,
        badgeJson,
        badgeMailchimp,
        badgeMySQL,
        badgePhp,
        badgePhpMyAdmin,
        badgePython,
        badgeSQL,
        badgeSlack,
        badgeTrello,
        badgeVMWareWorkstation,
        badgeWindows,
        badgeWordpress,
        badgeCplusplus,
        badgeSQL,
        badgeUML,
        badgeDebian,
        badgeChrome,
        badgeMySQL,
        badgeAndroidStudio,
        badgeNetBeans,
        badgeBash,
        badgeDocker,
        badgeTomcat,
        badgePhp,
        badgeJava,
        badgeHtml5,
        badgeCSS3,
        badgeJavascript,
        badgeJson,
        badgeEnglish,
        badgeRobertCollins,
        badgeWikipedia;
import '../education_content.dart' show EducationContent;

List<Widget> buildEducationBubbleContent(BuildContext context) {
  EducationContent contentLeWagon = EducationContent(
      boxShadowColor: Color.fromARGB(76, 255, 0, 0),
      boxBorderColor: Color.fromARGB(94, 255, 0, 0),
      academicLogoAssetPath: "lib/assets/bubble_content/school/lewagon.png",
      periodDescription: AppStrings.LEWAGON_PERIOD[appLanguage.value],
      degreeDescription: AppStrings.LEWAGON_DEGREE,
      curriculumDescription: AppStrings.LEWAGON_CURRICULUM[appLanguage.value],
      externalLinks: [
        ExternalLink(
            assetImagePath: "lib/assets/bubble_content/external_link.png",
            url: "https://www.lewagon.com/online/data-science-course"),
      ],
      languages: [
        badgePython,
        badgeJson,
        badgeSQL
      ],
      tools: [
        badgeWindows,
        badgeDebian,
        badgeVSCode,
        badgeGithub,
        badgeJupyter,
        badgeMatplotlib,
        badgePandas,
        badgeDBeaver,
        badgeSeaborn,
        badgeKeras,
        badgeTensorflow,
        badgeFastapi,
        badgeKaggle,
        badgeHuggingface,
        badgeDocker,
        badgeColaboratory
      ]);

  EducationContent contentLeCnam = EducationContent(
      boxShadowColor: Color.fromARGB(76, 194, 0, 43),
      boxBorderColor: Color.fromARGB(94, 194, 0, 43),
      academicLogoAssetPath:
          "lib/assets/bubble_content/school/le_cnam_paris.png",
      periodDescription: AppStrings.LECNAM_PERIOD[appLanguage.value],
      degreeDescription: AppStrings.LECNAM_DEGREE,
      curriculumDescription: AppStrings.LECNAM_CURRICULUM[appLanguage.value],
      externalLinks: [
        ExternalLink(
            assetImagePath: "lib/assets/bubble_content/external_link.png",
            url:
                "https://formation.cnam.fr/rechercher-par-discipline/licence-professionnelle-en-informatique-web-mobile-et-business-intelligence-813212.kjsp"),
      ],
      languages: [
        badgeUML,
        badgeSQL,
        badgeCplusplus,
        badgePhp,
        badgeJava,
        badgeHtml5,
        badgeCSS3,
        badgeJavascript,
        badgeJson
      ],
      tools: [
        badgeDebian,
        badgeChrome,
        badgeMySQL,
        badgeAndroidStudio,
        badgeNetBeans,
        badgeBash,
        badgeDocker,
        badgeTomcat
      ]);

  EducationContent contentGreta = EducationContent(
      boxShadowColor: Color.fromARGB(76, 87, 112, 190),
      boxBorderColor: Color.fromARGB(94, 87, 112, 190),
      academicLogoAssetPath: "lib/assets/bubble_content/school/greta_94.png",
      periodDescription: AppStrings.GRETA_PERIOD[appLanguage.value],
      degreeDescription: AppStrings.GRETA_DEGREE,
      curriculumDescription: AppStrings.GRETA_CURRICULUM[appLanguage.value],
      languages: [
        badgePython,
        badgeHtml5,
        badgeCSS3,
        badgeJavascript,
        badgeJson,
        badgePhp,
        badgeSQL
      ],
      tools: [
        badgeWordpress,
        badgeWindows,
        badgeChrome,
        badgeMySQL,
        badgePhpMyAdmin,
        badgeVMWareWorkstation,
        badgeGoogleDocs,
        badgeSlack,
        badgeTrello,
        badgeMailchimp,
      ]);

  EducationContent contentUpec = EducationContent(
      boxShadowColor: Color.fromARGB(75, 231, 34, 48),
      boxBorderColor: Color.fromARGB(94, 231, 34, 48),
      academicLogoAssetPath: "lib/assets/bubble_content/school/upec.png",
      periodDescription: AppStrings.UPEC_PERIOD[appLanguage.value],
      degreeDescription: AppStrings.UPEC_DEGREE,
      curriculumDescription: AppStrings.UPEC_CURRICULUM[appLanguage.value],
      externalLinks: [
        ExternalLink(
            assetImagePath: "lib/assets/bubble_content/skill/wikipedia.png",
            url: "https://fr.wikipedia.org/wiki/Utilisateur:AdagioRibbit"),
      ],
      languages: [
        badgeEnglish
      ],
      tools: [
        badgeRobertCollins,
        badgeWikipedia
      ]);

  return [contentLeWagon, contentLeCnam, contentGreta, contentUpec];
}
