import 'dart:ui' show Color;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show GlobalKeyRing;
import 'package:dossier_de_competences_web/helpers/utils.dart' show Utils;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart';
import 'package:dossier_de_competences_web/widgets/bubble/bubble_carousel.dart'
    show BubbleCarousel;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart'
    show BoxConstraints, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

const Color prastelBorderColor = Color.fromARGB(255, 1, 40, 91);
const Color prastelShadowColor = Color.fromARGB(127, 1, 40, 91);

ValueListenableBuilder content_prastel_mobile = ValueListenableBuilder(
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
            badgeXamarin,
            badgeNetMaui,
            badgeIos,
            badgeAndroid,
            badgeBlender,
            badgeGit,
            badgeExcel
          ],
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
          externalLinks: [
            ExternalLink(
                assetImagePath: "lib/assets/bubble_content/google_play.png",
                url:
                    "https://play.google.com/store/apps/details?id=it.fldesign.www.flashlight&hl=$value"),
          ],
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
