import 'dart:ui' show Color;

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
          academicLogoAssetPath: "lib/assets/le_cnam_paris.png",
          periodDescription: AppStrings.LECNAM_PERIOD[value],
          degreeDescription: AppStrings.LECNAM_DEGREE,
          curriculumDescription: AppStrings.LECNAM_CURRICULUM[value],
          languages: "UML, SQL, C, Java,\nHTML5, CSS3, PHP5, JavaScript ES5",
          tools: "Linux, PhpMyAdmin, NetBeans,\nAndroid Studio, Docker");
    });
