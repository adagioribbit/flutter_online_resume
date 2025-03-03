import 'dart:ui' show Color;

import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
    show
        badgeAndroid,
        badgeAndroidStudio,
        badgeApacheServer,
        badgeBlender,
        badgeBluetooth,
        badgeBootstrap,
        badgeCSS3,
        badgeCSharp,
        badgeDebian,
        badgeExcel,
        badgeGit,
        badgeGradle,
        badgeHtml5,
        badgeIos,
        badgeJQuery,
        badgeJava,
        badgeJavascript,
        badgeMacos,
        badgeMySQL,
        badgeNetMaui,
        badgePhp,
        badgeVisualStudio2022,
        badgeXCode,
        badgeXamarin;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart' show ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

const Color prastelBorderColor = Color.fromARGB(255, 1, 40, 91);
const Color prastelShadowColor = Color.fromARGB(127, 1, 40, 91);

ValueListenableBuilder contentPrastelMobile = ValueListenableBuilder(
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
          externalLinks: [
            ExternalLink(
                assetImagePath: "lib/assets/bubble_content/appstore.png",
                url: "https://apps.apple.com/fr/app/prastelbt/id1321293444"),
            ExternalLink(
                assetImagePath: "lib/assets/bubble_content/google_play.png",
                url:
                    "https://play.google.com/store/apps/details?id=m2000bt.Android"),
          ],
          languages: [badgeCSharp],
          tools: [
            badgeVisualStudio2022,
            badgeMacos,
            badgeXamarin,
            badgeNetMaui,
            badgeIos,
            badgeAndroid,
            badgeBluetooth,
            badgeGit,
            badgeXCode,
            badgeExcel,
            badgeBlender,
          ],
          projectTasks: AppStrings.PRASTEL_MOBILE_DESCRIPTION[value]);
    });

ValueListenableBuilder contentPrastelCR15NM = ValueListenableBuilder(
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
          externalLinks: [
            ExternalLink(
                assetImagePath: "lib/assets/bubble_content/google_play.png",
                url:
                    "https://play.google.com/store/apps/details?id=it.fldesign.www.flashlight&hl=$value"),
          ],
          languages: [badgeJava],
          tools: [
            badgeAndroidStudio,
            badgeAndroid,
            badgeGradle,
          ],
          projectTasks: AppStrings.PRASTEL_CR15NM_DESCRIPTION[value]);
    });

ValueListenableBuilder contentPrastelWeb = ValueListenableBuilder(
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
