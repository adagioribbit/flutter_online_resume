import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;

import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_badges.dart'
    show badgeChrome, badgeDart, badgeFlutter, badgeGithub, badgeVSCode;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

const Color yardStickBorderColor = Color.fromARGB(255, 0, 139, 19);
const Color yardStickShadowColor = Color.fromARGB(127, 0, 139, 19);

ValueListenableBuilder contentYardStickOnlineResume = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: yardStickBorderColor,
        boxShadowColor: yardStickShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/yardstick.png"),
        periodDescription: AppStrings.YARDSTICK_ONLINE_RESUME_PERIOD[value],
        projectDescription: AppStrings.YARDSTICK_ONLINE_RESUME_PROJECT[value],
        externalLinks: [
          ExternalLink(
              assetImagePath: "lib/assets/bubble_content/skill/github.png",
              url: "https://github.com/adagioribbit/flutter_online_resume"),
        ],
        languages: [badgeDart],
        tools: [
          badgeFlutter,
          badgeVSCode,
          badgeChrome,
          badgeGithub,
        ],
        projectTasks: AppStrings.YARDSTICK_ONLINE_RESUME_TASKS[value],
      );
    });
