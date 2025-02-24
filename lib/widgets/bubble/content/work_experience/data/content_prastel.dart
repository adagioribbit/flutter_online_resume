import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:flutter/material.dart' show ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

ValueListenableBuilder content_prastel_Mobile = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.PRASTEL_MOBILE_PERIOD[value],
          projectDescription: AppStrings.PRASTEL_MOBILE_PROJECT[value],
          projectTasks: AppStrings.PRASTEL_MOBILE_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 1, 40, 91),
          boxShadowColor: Color.fromARGB(127, 1, 40, 91),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/prastel.png"));
    });

ValueListenableBuilder content_prastel_CR15NM = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.PRASTEL_CR15NM_PERIOD[value],
          projectDescription: AppStrings.PRASTEL_CR15NM_PROJECT[value],
          projectTasks: AppStrings.PRASTEL_CR15NM_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 1, 40, 91),
          boxShadowColor: Color.fromARGB(127, 1, 40, 91),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/prastel.png"));
    });

ValueListenableBuilder content_prastel_site_interne = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          periodDescription: AppStrings.PRASTEL_SITE_INTERNE_PERIOD[value],
          projectDescription: AppStrings.PRASTEL_SITE_INTERNE_PROJECT[value],
          projectTasks: AppStrings.PRASTEL_SITE_INTERNE_DESCRIPTION[value],
          boxBorderColor: Color.fromARGB(255, 1, 40, 91),
          boxShadowColor: Color.fromARGB(127, 1, 40, 91),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/prastel.png"));
    });
