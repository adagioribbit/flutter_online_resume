import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;

import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
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
        badgeJson,
        badgeMacos,
        badgeMariaDB,
        badgeNetBeans,
        badgeNpm,
        badgeObjectiveC,
        badgePhp,
        badgePhpMyAdmin,
        badgePhpStorm,
        badgeQt,
        badgeSQLite,
        badgeSafari,
        badgeSlack,
        badgeUML,
        badgeWindows,
        badgeXCode,
        badgeXML;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

const Color evolucareBorderColor = Color.fromARGB(255, 235, 90, 15);
const Color evolucareShadowColor = Color.fromARGB(127, 235, 90, 15);

ValueListenableBuilder contentEvolucareImaging = ValueListenableBuilder(
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
          badgeJson,
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
          badgeBootstrap
        ],
        projectTasks: AppStrings.EVOLUCARE_IMAGING_TASKS[value],
      );
    });

ValueListenableBuilder contentEvolucareMobile = ValueListenableBuilder(
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
            badgeJson,
            badgeSQLite,
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
          projectTasks: AppStrings.EVOLUCARE_MOBILE_TASKS[value]);
    });

ValueListenableBuilder contentEvolucareBorne = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: evolucareBorderColor,
          boxShadowColor: evolucareShadowColor,
          employerHeader: EmployerHeader(
              employerLogoAssetPath:
                  "lib/assets/bubble_content/employer/evolucare.png"),
          periodDescription: AppStrings.EVOLUCARE_BORNE_PERIOD[value],
          projectDescription: AppStrings.EVOLUCARE_BORNE_PROJECT[value],
          externalLinks: [
            ExternalLink(
                assetImagePath: "lib/assets/bubble_content/appstore.png",
                url:
                    "https://www.evolucare.com/fr/imagerie-borne-accueil-rendez-vous/"),
          ],
          languages: [
            badgePhp,
            badgeHtml5,
            badgeCSS3,
            badgeJavascript,
            badgeJson,
          ],
          tools: [
            badgeAngular,
            badgeWindows,
            badgePhpStorm,
            badgeChrome,
            badgeJira,
            badgeConfluence,
            badgeGitlab,
            badgeJQuery,
            badgeBootstrap,
          ],
          projectTasks: AppStrings.EVOLUCARE_BORNE_TASKS[value]);
    });
