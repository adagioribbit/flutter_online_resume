import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
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
        badgeWindows;
import 'package:dossier_de_competences_web/widgets/external_link.dart'
    show ExternalLink;
import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' show appLanguage;
import '../education_content.dart';

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
