import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
    show
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
        badgeWordpress;

import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' show appLanguage;
import '../education_content.dart';

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
