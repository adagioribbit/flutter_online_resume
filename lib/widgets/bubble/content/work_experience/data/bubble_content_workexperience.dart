import 'package:flutter/material.dart';

import '../../../../external_link.dart' show ExternalLink;
import '../../skills/skill_badges.dart';
import '../../../../../helpers/constants.dart' show AppStrings;
import '../../../../../helpers/globals.dart' show appLanguage;
import 'amiltone_content.dart' show AmiltoneContent;
import 'evolucare_content.dart' show EvolucareContent;
import 'prastel_content.dart' show PrastelContent;
import 'yardstick_content.dart' show YardStickContent;

List<ExternalLink> yardstickStarterExternalLinks = [
  ExternalLink(
    assetImagePath: "lib/assets/bubble_content/employer/badge_argus_presse.png",
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
    assetImagePath: "lib/assets/bubble_content/employer/badge_xs_arena.png",
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
];

List<Widget> buildWorkExperienceBubbleContent(BuildContext context) {
  YardStickContent contentYardStickOnlineResume = YardStickContent(
    periodDescription:
        AppStrings.YARDSTICK_ONLINE_RESUME_PERIOD[appLanguage.value],
    projectDescription:
        AppStrings.YARDSTICK_ONLINE_RESUME_PROJECT[appLanguage.value],
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
    projectTasks: AppStrings.YARDSTICK_ONLINE_RESUME_TASKS[appLanguage.value],
  );

  PrastelContent contentPrastelMobile = PrastelContent(
      periodDescription: AppStrings.PRASTEL_MOBILE_PERIOD[appLanguage.value],
      projectDescription: AppStrings.PRASTEL_MOBILE_PROJECT[appLanguage.value],
      externalLinks: [
        ExternalLink(
            assetImagePath: "lib/assets/bubble_content/appstore.png",
            url:
                "https://apps.apple.com/fr/app/prastelbt/id1321293444?platform=iphone",
            tooltip: "PrastelBT"),
        ExternalLink(
            assetImagePath: "lib/assets/bubble_content/google_play.png",
            url:
                "https://play.google.com/store/apps/details?id=m2000bt.Android",
            tooltip: "PrastelBT"),
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
      projectTasks: AppStrings.PRASTEL_MOBILE_TASKS[appLanguage.value]);

  PrastelContent contentPrastelCR15NM = PrastelContent(
      periodDescription: AppStrings.PRASTEL_CR15NM_PERIOD[appLanguage.value],
      projectDescription: AppStrings.PRASTEL_CR15NM_PROJECT[appLanguage.value],
      externalLinks: [
        ExternalLink(
            assetImagePath: "lib/assets/bubble_content/google_play.png",
            url:
                "https://play.google.com/store/apps/details?id=it.fldesign.www.flashlight&hl=${appLanguage.value}",
            tooltip: "CRN15M"),
      ],
      languages: [badgeJava],
      tools: [
        badgeAndroidStudio,
        badgeAndroid,
        badgeGradle,
      ],
      projectTasks: AppStrings.PRASTEL_CR15NM_TASKS[appLanguage.value]);

  PrastelContent contentPrastelWeb = PrastelContent(
      periodDescription:
          AppStrings.PRASTEL_SITE_INTERNE_PERIOD[appLanguage.value],
      projectDescription:
          AppStrings.PRASTEL_SITE_INTERNE_PROJECT[appLanguage.value],
      languages: [badgePhp, badgeHtml5, badgeJavascript, badgeJson, badgeCSS3],
      tools: [
        badgeDebian,
        badgeApacheServer,
        badgeMySQL,
        badgeJQuery,
        badgeBootstrap,
        badgeGit
      ],
      projectTasks: AppStrings.PRASTEL_SITE_INTERNE_TASKS[appLanguage.value]);

  AmiltoneContent contentAmiltoneMigration = AmiltoneContent(
    periodDescription: AppStrings.AMILTONE_MIGRATION_PERIOD[appLanguage.value],
    projectDescription:
        AppStrings.AMILTONE_MIGRATION_PROJECT[appLanguage.value],
    languages: [],
    tools: [
      badgeSharePoint,
      badgeAccess,
      badgeWindowsServer,
      badgeSQLServer,
      badgeGoogleDocs
    ],
    projectTasks: AppStrings.AMILTONE_MIGRATION_TASKS[appLanguage.value],
  );

  AmiltoneContent contentAmiltoneIot = AmiltoneContent(
    periodDescription: AppStrings.AMILTONE_IOT_PERIOD[appLanguage.value],
    projectDescription: AppStrings.AMILTONE_IOT_PROJECT[appLanguage.value],
    languages: [badgePython, badgePowerShell],
    tools: [badgeThingsboard, badgeSQLServer],
    projectTasks: AppStrings.AMILTONE_IOT_TASKS[appLanguage.value],
  );

  AmiltoneContent contentAmiltonePowerBI = AmiltoneContent(
    periodDescription: AppStrings.AMILTONE_POWERBI_PERIOD[appLanguage.value],
    projectDescription: AppStrings.AMILTONE_POWERBI_PROJECT[appLanguage.value],
    languages: [badgeSQL],
    tools: [badgePowerQuery, badgePowerBI, badgeSQLServer],
    projectTasks: AppStrings.AMILTONE_POWERBI_TASKS[appLanguage.value],
  );

  AmiltoneContent contentAmiltoneWSO2 = AmiltoneContent(
    periodDescription: AppStrings.AMILTONE_WSO2_PERIOD[appLanguage.value],
    projectDescription: AppStrings.AMILTONE_WSO2_PROJECT[appLanguage.value],
    languages: [badgeXML],
    tools: [badgeWSO2, badgeJira],
    projectTasks: AppStrings.AMILTONE_WSO2_TASKS[appLanguage.value],
  );

  AmiltoneContent contentAmiltoneAndroid = AmiltoneContent(
    periodDescription: AppStrings.AMILTONE_ANDROID_PERIOD[appLanguage.value],
    projectDescription: AppStrings.AMILTONE_ANDROID_PROJECT[appLanguage.value],
    languages: [badgeJava],
    tools: [badgeAndroidStudio, badgeAndroid, badgeJira],
    projectTasks: AppStrings.AMILTONE_ANDROID_TASKS[appLanguage.value],
  );

  EvolucareContent contentEvolucareImaging = EvolucareContent(
    periodDescription: AppStrings.EVOLUCARE_IMAGING_PERIOD[appLanguage.value],
    projectDescription: AppStrings.EVOLUCARE_IMAGING_PROJECT[appLanguage.value],
    externalLinks: [
      ExternalLink(
        assetImagePath:
            "lib/assets/bubble_content/employer/badge_evolucare.png",
        url:
            "https://www.evolucare.com/${appLanguage.value}/logiciel-imagerie-medicale/",
        tooltip: "Evolucare Imaging",
      ),
    ],
    languages: [
      badgePhp,
      badgeHtml5,
      badgeCSS3,
      badgeJavascript,
      badgeSQL,
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
    projectTasks: AppStrings.EVOLUCARE_IMAGING_TASKS[appLanguage.value],
  );

  EvolucareContent contentEvolucareMobile = EvolucareContent(
      periodDescription: AppStrings.EVOLUCARE_MOBILE_PERIOD[appLanguage.value],
      projectDescription:
          AppStrings.EVOLUCARE_MOBILE_PROJECT[appLanguage.value],
      externalLinks: [
        ExternalLink(
          assetImagePath: "lib/assets/bubble_content/appstore.png",
          url:
              "https://apps.apple.com/fr/app/evolucare-imaging-mobile/id1469915229",
          tooltip: "Evolucare Imaging Mobile",
        ),
      ],
      languages: [
        badgeHtml5,
        badgeCSS3,
        badgeJavascript,
        badgeSQL,
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
      projectTasks: AppStrings.EVOLUCARE_MOBILE_TASKS[appLanguage.value]);

  EvolucareContent contentEvolucareBorne = EvolucareContent(
      periodDescription: AppStrings.EVOLUCARE_BORNE_PERIOD[appLanguage.value],
      projectDescription: AppStrings.EVOLUCARE_BORNE_PROJECT[appLanguage.value],
      externalLinks: [
        ExternalLink(
          assetImagePath:
              "lib/assets/bubble_content/employer/badge_evolucare.png",
          url:
              "https://www.evolucare.com/fr/imagerie-borne-accueil-rendez-vous/",
          tooltip: AppStrings.EVOLUCARE_BORNE_BADGE[appLanguage.value],
        ),
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
      projectTasks: AppStrings.EVOLUCARE_BORNE_TASKS[appLanguage.value]);

  YardStickContent contentYardStickStarter = YardStickContent(
    periodDescription: AppStrings.YARDSTICK_STARTER_PERIOD[appLanguage.value],
    projectDescription: AppStrings.YARDSTICK_STARTER_PROJECT[appLanguage.value],
    externalLinks: yardstickStarterExternalLinks,
    languages: [],
    tools: [],
    projectTasks: AppStrings.YARDSTICK_STARTER_TASKS[appLanguage.value],
  );

  return [
    contentYardStickOnlineResume,
    contentPrastelMobile,
    contentPrastelCR15NM,
    contentPrastelWeb,
    contentAmiltoneMigration,
    contentAmiltoneIot,
    contentAmiltonePowerBI,
    contentAmiltoneWSO2,
    contentAmiltoneAndroid,
    contentEvolucareImaging,
    contentEvolucareMobile,
    contentEvolucareBorne,
    contentYardStickStarter
  ];
}
