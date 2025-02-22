import 'dart:ui' show Color;

import 'package:flutter/material.dart' show ValueListenableBuilder;

import '../../../../helpers/constants.dart' show AppStrings;
import '../../../../helpers/globals.dart' as globals;
import 'education_content.dart';

ValueListenableBuilder content_upec = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return EducationContent(
          boxShadowColor: Color.fromARGB(75, 231, 34, 48),
          boxBorderColor: Color.fromARGB(94, 231, 34, 48),
          academicLogoAssetPath: "lib/assets/upec.png",
          periodDescription: AppStrings.UPEC_PERIOD[value],
          degreeDescription: AppStrings.UPEC_DEGREE,
          curriculumDescription: AppStrings.UPEC_CURRICULUM[value],
          languages: "English",
          tools: "Le Robert & Collins");
    });
