import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

ValueListenableBuilder content_evolucare_imaging = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: Color.fromARGB(255, 235, 90, 15),
          boxShadowColor: Color.fromARGB(127, 235, 90, 15),
          employerHeader: EmployerHeader(
              employerLogoAssetPath: "lib/assets/evolucare.png"));
    });

ValueListenableBuilder content_evolucare_mobile = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: Color.fromARGB(255, 235, 90, 15),
          boxShadowColor: Color.fromARGB(127, 235, 90, 15),
          employerHeader: EmployerHeader(
              employerLogoAssetPath: "lib/assets/evolucare.png"));
    });
