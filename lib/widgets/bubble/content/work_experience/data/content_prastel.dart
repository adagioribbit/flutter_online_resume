import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/widgets/badge.dart';
import 'package:flutter/material.dart' show ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

const Color prastelBorderColor = Color.fromARGB(255, 1, 40, 91);
const Color prastelShadowColor = Color.fromARGB(127, 1, 40, 91);

ValueListenableBuilder content_prastel_Mobile = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: prastelBorderColor,
          boxShadowColor: prastelShadowColor,
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/prastel.png"),
          periodDescription: AppStrings.PRASTEL_MOBILE_PERIOD[value],
          projectDescription: AppStrings.PRASTEL_MOBILE_PROJECT[value],
          languages: [badgeCSharp],
          tools: [
            badgeVisualStudio2022,
            badgeXamarin,
            badgeNetMaui,
            badgeIos,
            badgeAndroid,
            badgeBlender,
            badgeGit,
            badgeExcel
          ], // NET MAUI
          projectTasks: AppStrings.PRASTEL_MOBILE_DESCRIPTION[value]);
    });

ValueListenableBuilder content_prastel_CR15NM = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: prastelBorderColor,
          boxShadowColor: prastelShadowColor,
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/prastel.png"),
          periodDescription: AppStrings.PRASTEL_CR15NM_PERIOD[value],
          projectDescription: AppStrings.PRASTEL_CR15NM_PROJECT[value],
          languages: [badgeJava],
          tools: [badgeAndroidStudio, badgeAndroid],
          projectTasks: AppStrings.PRASTEL_CR15NM_DESCRIPTION[value]);
    });

ValueListenableBuilder content_prastel_site_interne = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: prastelBorderColor,
          boxShadowColor: prastelShadowColor,
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/prastel.png"),
          periodDescription: AppStrings.PRASTEL_SITE_INTERNE_PERIOD[value],
          projectDescription: AppStrings.PRASTEL_SITE_INTERNE_PROJECT[value],
          languages: [badgePhp, badgeHtml5, badgeJavascript, badgeCSS3],
          tools: [
            badgeDebian,
            badgeApacheServer,
            badgeMySQL,
            badgeJQuery,
            badgeBootstrap,
            badgeGit
          ],
          projectTasks: AppStrings.PRASTEL_SITE_INTERNE_DESCRIPTION[value]);
    });
