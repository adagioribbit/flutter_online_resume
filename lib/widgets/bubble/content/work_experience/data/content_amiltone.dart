import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
    show
        badgeAccess,
        badgeAndroid,
        badgeAndroidStudio,
        badgeGoogleDocs,
        badgeJava,
        badgeJira,
        badgePowerBI,
        badgePowerQuery,
        badgePowerShell,
        badgePython,
        badgeSQL,
        badgeSQLServer,
        badgeSharePoint,
        badgeThingsboard,
        badgeWSO2,
        badgeWindowsServer,
        badgeXML;
import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

const Color amiltoneBorderColor = Color.fromARGB(255, 206, 48, 137);
const Color amiltoneShadowColor = Color.fromARGB(127, 206, 48, 137);

ValueListenableBuilder contentAmiltoneMigration = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: amiltoneBorderColor,
        boxShadowColor: amiltoneShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/amiltone.png"),
        periodDescription: AppStrings.AMILTONE_MIGRATION_PERIOD[value],
        projectDescription: AppStrings.AMILTONE_MIGRATION_PROJECT[value],
        languages: [],
        tools: [
          badgeSharePoint,
          badgeAccess,
          badgeWindowsServer,
          badgeSQLServer,
          badgeGoogleDocs
        ],
        projectTasks: AppStrings.AMILTONE_MIGRATION_TASKS[value],
      );
    });

ValueListenableBuilder contentAmiltoneIot = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: amiltoneBorderColor,
        boxShadowColor: amiltoneShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/amiltone.png"),
        periodDescription: AppStrings.AMILTONE_IOT_PERIOD[value],
        projectDescription: AppStrings.AMILTONE_IOT_PROJECT[value],
        languages: [badgePython, badgePowerShell],
        tools: [badgeThingsboard, badgeSQLServer],
        projectTasks: AppStrings.AMILTONE_IOT_TASKS[value],
      );
    });

ValueListenableBuilder contentAmiltonePowerBI = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: amiltoneBorderColor,
        boxShadowColor: amiltoneShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/amiltone.png"),
        periodDescription: AppStrings.AMILTONE_POWERBI_PERIOD[value],
        projectDescription: AppStrings.AMILTONE_POWERBI_PROJECT[value],
        languages: [badgeSQL],
        tools: [badgePowerQuery, badgePowerBI, badgeSQLServer],
        projectTasks: AppStrings.AMILTONE_POWERBI_TASKS[value],
      );
    });

ValueListenableBuilder contentAmiltoneWSO2 = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: amiltoneBorderColor,
        boxShadowColor: amiltoneShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/amiltone.png"),
        periodDescription: AppStrings.AMILTONE_WSO2_PERIOD[value],
        projectDescription: AppStrings.AMILTONE_WSO2_PROJECT[value],
        languages: [badgeXML],
        tools: [badgeWSO2, badgeJira],
        projectTasks: AppStrings.AMILTONE_WSO2_TASKS[value],
      );
    });

ValueListenableBuilder contentAmiltoneAndroid = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: amiltoneBorderColor,
        boxShadowColor: amiltoneShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/amiltone.png"),
        periodDescription: AppStrings.AMILTONE_ANDROID_PERIOD[value],
        projectDescription: AppStrings.AMILTONE_ANDROID_PROJECT[value],
        languages: [badgeJava],
        tools: [badgeAndroidStudio, badgeAndroid, badgeJira],
        projectTasks: AppStrings.AMILTONE_ANDROID_TASKS[value],
      );
    });
