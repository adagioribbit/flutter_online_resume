import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

ValueListenableBuilder content_amiltone_migration = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.AMILTONE_MIGRATION_PERIOD[value],
          projectDescription: AppStrings.AMILTONE_MIGRATION_PROJECT[value],
          projectTasks: AppStrings.AMILTONE_MIGRATION_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_iot = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.AMILTONE_IOT_PERIOD[value],
          projectDescription: AppStrings.AMILTONE_IOT_PROJECT[value],
          projectTasks: AppStrings.AMILTONE_IOT_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_powerbi = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.AMILTONE_POWERBI_PERIOD[value],
          projectDescription: AppStrings.AMILTONE_POWERBI_PROJECT[value],
          projectTasks: AppStrings.AMILTONE_POWERBI_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_wso2 = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.AMILTONE_WSO2_PERIOD[value],
          projectDescription: AppStrings.AMILTONE_WSO2_PROJECT[value],
          projectTasks: AppStrings.AMILTONE_WSO2_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_android = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.AMILTONE_ANDROID_PERIOD[value],
          projectDescription: AppStrings.AMILTONE_ANDROID_PROJECT[value],
          projectTasks: AppStrings.AMILTONE_ANDROID_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/amiltone.png"));
    });
