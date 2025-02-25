import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

ValueListenableBuilder content_evolucare_imaging = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.EVOLUCARE_IMAGING_PERIOD[value],
          projectDescription: AppStrings.EVOLUCARE_IMAGING_PROJECT[value],
          projectTasks: AppStrings.EVOLUCARE_IMAGING_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 235, 90, 15),
          boxShadowColor: Color.fromARGB(127, 235, 90, 15),
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/evolucare.png"));
    });

ValueListenableBuilder content_evolucare_mobile = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.EVOLUCARE_MOBILE_PERIOD[value],
          projectDescription: AppStrings.EVOLUCARE_MOBILE_PROJECT[value],
          projectTasks: AppStrings.EVOLUCARE_MOBILE_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 235, 90, 15),
          boxShadowColor: Color.fromARGB(127, 235, 90, 15),
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/evolucare.png"));
    });
