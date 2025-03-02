import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
    show
        badgeAndroid,
        badgeAndroidStudio,
        badgeAngular,
        badgeApacheServer,
        badgeBash,
        badgeBootstrap,
        badgeCSS3,
        badgeCSharp,
        badgeChrome,
        badgeConfluence,
        badgeCordova,
        badgeDebian,
        badgeGitlab,
        badgeGradle,
        badgeHtml5,
        badgeIos,
        badgeJQuery,
        badgeJava,
        badgeJavascript,
        badgeJira,
        badgeMacos,
        badgeMariaDB,
        badgeNetBeans,
        badgeNpm,
        badgeObjectiveC,
        badgePhp,
        badgePhpMyAdmin,
        badgePhpStorm,
        badgeQt,
        badgeSafari,
        badgeSlack,
        badgeUML,
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
          badgeUML,
          badgeQt,
          badgeBash,
          badgeJava,
          badgeCSharp,
          badgeXML
        ],
        tools: [
          badgeDebian,
          badgeMacos,
          badgeApacheServer,
          badgeMariaDB,
          badgePhpMyAdmin,
          badgePhpStorm,
          badgeChrome,
          badgeSafari,
          badgeNetBeans,
          badgeJira,
          badgeConfluence,
          badgeSlack,
          badgeGitlab,
          badgeJQuery,
          badgeBootstrap,
          badgeAngular
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
            badgeUML,
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
            badgeGradle,
            badgeXCode,
            badgeJira,
            badgeConfluence,
            badgeSlack,
            badgeGitlab,
            badgeNpm
          ],
          projectTasks: AppStrings.EVOLUCARE_MOBILE_DESCRIPTION[value]);
    });
