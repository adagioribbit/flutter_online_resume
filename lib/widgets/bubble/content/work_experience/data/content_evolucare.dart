import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
    show
        badgeAndroid,
        badgeAndroidStudio,
        badgeApacheServer,
        badgeBash,
        badgeBootstrap,
        badgeCSS3,
        badgeCSharp,
        badgeConfluence,
        badgeCordova,
        badgeDebian,
        badgeGit,
        badgeGitlab,
        badgeHtml5,
        badgeIos,
        badgeJQuery,
        badgeJava,
        badgeJavascript,
        badgeJira,
        badgeMacos,
        badgeMariaDB,
        badgeNetBeans,
        badgeObjectiveC,
        badgePhp,
        badgePhpMyAdmin,
        badgePhpStorm,
        badgeQt,
        badgeXCode,
        badgeXML;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

const Color evolucareBorderColor = Color.fromARGB(255, 235, 90, 15);
const Color evolucareShadowColor = Color.fromARGB(127, 235, 90, 15);

ValueListenableBuilder content_evolucare_imaging = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: evolucareBorderColor,
        boxShadowColor: evolucareShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/evolucare.png"),
        periodDescription: AppStrings.EVOLUCARE_IMAGING_PERIOD[value],
        projectDescription: AppStrings.EVOLUCARE_IMAGING_PROJECT[value],
        externalLinks: [
          ExternalLink(
              assetImagePath: "lib/assets/bubble_content/external_link.png",
              url:
                  "https://www.evolucare.com/$value/logiciel-imagerie-medicale/"),
        ],
        languages: [
          badgePhp,
          badgeHtml5,
          badgeCSS3,
          badgeJavascript,
          badgeXML,
          badgeJava,
          badgeCSharp,
          badgeQt,
          badgeBash
        ],
        tools: [
          badgeDebian,
          badgeMacos,
          badgeApacheServer,
          badgeMariaDB,
          badgePhpMyAdmin,
          badgePhpStorm,
          badgeNetBeans,
          badgeJira,
          badgeConfluence,
          badgeGit,
          badgeJQuery,
          badgeBootstrap
        ],
        projectTasks: AppStrings.EVOLUCARE_IMAGING_DESCRIPTION[value],
      );
    });

ValueListenableBuilder content_evolucare_mobile = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: evolucareBorderColor,
          boxShadowColor: evolucareShadowColor,
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/evolucare.png"),
          periodDescription: AppStrings.EVOLUCARE_MOBILE_PERIOD[value],
          projectDescription: AppStrings.EVOLUCARE_MOBILE_PROJECT[value],
          externalLinks: [
            ExternalLink(
                assetImagePath: "lib/assets/bubble_content/appstore.png",
                url:
                    "https://apps.apple.com/fr/app/evolucare-imaging-mobile/id1469915229"),
          ],
          languages: [
            badgeHtml5,
            badgeCSS3,
            badgeJavascript,
            badgeJava,
            badgeObjectiveC
          ],
          tools: [
            badgeCordova,
            badgeAndroid,
            badgeIos,
            badgeDebian,
            badgeMacos,
            badgePhpStorm,
            badgeAndroidStudio,
            badgeXCode,
            badgeJira,
            badgeGitlab
          ],
          projectTasks: AppStrings.EVOLUCARE_MOBILE_DESCRIPTION[value]);
    });
