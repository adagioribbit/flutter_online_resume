import 'dart:ui' show Color;

import 'package:flutter/material.dart' show ValueListenableBuilder;

import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' as globals;
import '../education_content.dart';

ValueListenableBuilder content_greta = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return EducationContent(
          boxShadowColor: Color.fromARGB(76, 87, 112, 190),
          boxBorderColor: Color.fromARGB(94, 87, 112, 190),
          academicLogoAssetPath: "lib/assets/greta_94.png",
          periodDescription: AppStrings.GRETA_PERIOD[value],
          degreeDescription: AppStrings.GRETA_DEGREE,
          curriculumDescription: AppStrings.GRETA_CURRICULUM[value],
          languages:
              "Python, HTML5, CSS3, PHP5, JavaScript ES5,\nSQL, Google Apps Script",
          tools: "WordPress, PHPMyAdmin,\nVMWare Workstation, Google Docs");
    });
