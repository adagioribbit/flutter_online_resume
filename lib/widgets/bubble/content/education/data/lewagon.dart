import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
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
import 'package:flutter/material.dart' show ValueListenableBuilder;
import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' as globals;
import '../education_content.dart';

ValueListenableBuilder content_lewagon = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return EducationContent(
          boxShadowColor: Color.fromARGB(76, 255, 0, 0),
          boxBorderColor: Color.fromARGB(94, 255, 0, 0),
          academicLogoAssetPath: "lib/assets/bubble_content/school/lewagon.png",
          periodDescription: AppStrings.LEWAGON_PERIOD[value],
          degreeDescription: AppStrings.LEWAGON_DEGREE,
          curriculumDescription: AppStrings.LEWAGON_CURRICULUM[value],
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
    });
