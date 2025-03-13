import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
    show badgeEnglish, badgeRobertCollins, badgeWikipedia;
import 'package:dossier_de_competences_web/widgets/external_link.dart'
    show ExternalLink;

import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' show appLanguage;
import '../education_content.dart';

EducationContent content_upec = EducationContent(
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
