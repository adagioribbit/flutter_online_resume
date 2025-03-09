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
            url: "https://github.com/adagioribbit/flutter_online_resume",
          ),
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

ValueListenableBuilder contentYardStickStarter = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
        boxBorderColor: yardStickBorderColor,
        boxShadowColor: yardStickShadowColor,
        employerHeader: EmployerHeader(
            employerLogoAssetPath:
                "lib/assets/bubble_content/employer/hard_life.png"),
        periodDescription: AppStrings.YARDSTICK_STARTER_PERIOD[value],
        projectDescription: AppStrings.YARDSTICK_STARTER_PROJECT[value],
        externalLinks: [
          ExternalLink(
            assetImagePath:
                "lib/assets/bubble_content/employer/badge_argus_presse.png",
            url: AppStrings.LINKEDIN_URL,
            hoverColor: Color.fromARGB(125, 230, 0, 96),
            tooltip: "Argus de la Presse / Cision",
          ),
          ExternalLink(
            assetImagePath:
                "lib/assets/bubble_content/employer/badge_british_council.png",
            url: AppStrings.LINKEDIN_URL,
            hoverColor: Color.fromARGB(125, 35, 8, 90),
            tooltip: "British Council",
          ),
          ExternalLink(
            assetImagePath:
                "lib/assets/bubble_content/employer/badge_xs_arena.png",
            url: AppStrings.LINKEDIN_URL,
            hoverColor: Color.fromARGB(125, 99, 124, 186),
            tooltip: "XS Arena",
          ),
          ExternalLink(
            assetImagePath:
                "lib/assets/bubble_content/employer/badge_teleperformance.png",
            url: AppStrings.LINKEDIN_URL,
            hoverColor: Color.fromARGB(125, 134, 14, 148),
            tooltip: "Téléperformance",
          ),
          ExternalLink(
            assetImagePath: "lib/assets/bubble_content/employer/badge_g4s.png",
            url: AppStrings.LINKEDIN_URL,
            hoverColor: Color.fromARGB(125, 238, 52, 63),
            tooltip: "Sicli / G4S",
          ),
        ],
        languages: [],
        tools: [],
        projectTasks: AppStrings.YARDSTICK_STARTER_TASKS[value],
      );
    });
