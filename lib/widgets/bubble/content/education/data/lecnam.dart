import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/widgets/bubble/badge.dart';
import 'package:flutter/material.dart' show ValueListenableBuilder;

import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' as globals;
import '../education_content.dart';

ValueListenableBuilder content_lecnam = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return EducationContent(
          boxShadowColor: Color.fromARGB(76, 194, 0, 43),
          boxBorderColor: Color.fromARGB(94, 194, 0, 43),
          academicLogoAssetPath:
              "lib/assets/bubble_content/school/le_cnam_paris.png",
          periodDescription: AppStrings.LECNAM_PERIOD[value],
          degreeDescription: AppStrings.LECNAM_DEGREE,
          curriculumDescription: AppStrings.LECNAM_CURRICULUM[value],
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
            badgeDocker
          ]);
    });
