import 'dart:ui' show Color;

import 'package:flutter/material.dart' show ValueListenableBuilder;

import '../../../../helpers/constants.dart' show AppStrings;
import '../../../../helpers/globals.dart' as globals;
import 'education_content.dart';

ValueListenableBuilder content_lewagon = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return EducationContent(
          boxShadowColor: Color.fromARGB(76, 255, 0, 0),
          boxBorderColor: Color.fromARGB(94, 255, 0, 0),
          academicLogoAssetPath: "lib/assets/lewagon.png",
          periodDescription: AppStrings.LEWAGON_PERIOD[value],
          degreeDescription: AppStrings.LEWAGON_DEGREE,
          curriculumDescription: AppStrings.LEWAGON_CURRICULUM[value],
          languages: "Python",
          tools:
              "Jupyter, Pandas, Matplotlib, Seaborn\nKeras, TensorFlow, HuggingFace\nFastAPI, Docker, Google Cloud Platform");
    });
