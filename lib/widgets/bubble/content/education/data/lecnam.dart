import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
    show
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
        badgeJson;
import 'package:dossier_de_competences_web/widgets/external_link.dart'
    show ExternalLink;

import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' show appLanguage;
import '../education_content.dart';

EducationContent contentLeCnam = EducationContent(
    boxShadowColor: Color.fromARGB(76, 194, 0, 43),
    boxBorderColor: Color.fromARGB(94, 194, 0, 43),
    academicLogoAssetPath: "lib/assets/bubble_content/school/le_cnam_paris.png",
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
