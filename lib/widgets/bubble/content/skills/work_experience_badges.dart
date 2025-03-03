import 'package:dossier_de_competences_web/helpers/constants.dart';
import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show ToolbarMenu, appLanguage, carouselIndex;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart';
import 'package:flutter/material.dart';

WorkExperienceBadge badgePrastelBT = WorkExperienceBadge(
    title: "PrastelBT",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_prastel.png",
    onPressedClbk: () {
      carouselIndex.value = 0;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgePrastelCRN15M = WorkExperienceBadge(
    title: "CRN15M",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_prastel.png",
    onPressedClbk: () {
      carouselIndex.value = 1;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgePrastelSiteInterne = WorkExperienceBadge(
    title: "Web",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_prastel.png",
    onPressedClbk: () {
      carouselIndex.value = 2;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgeAmiltoneMigration = WorkExperienceBadge(
    title: "Migration",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_amiltone.png",
    onPressedClbk: () {
      carouselIndex.value = 3;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgeAmiltoneIot = WorkExperienceBadge(
    title: "IoT",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_amiltone.png",
    onPressedClbk: () {
      carouselIndex.value = 4;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgeAmiltonePowerBI = WorkExperienceBadge(
    title: "Power BI",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_amiltone.png",
    onPressedClbk: () {
      carouselIndex.value = 5;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgeAmiltoneWSO2 = WorkExperienceBadge(
    title: "WSO2",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_amiltone.png",
    onPressedClbk: () {
      carouselIndex.value = 6;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgeAmiltoneAndroid = WorkExperienceBadge(
    title: "Android",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_amiltone.png",
    onPressedClbk: () {
      carouselIndex.value = 7;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgeEvolucareImaging = WorkExperienceBadge(
    title: "Imaging",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_evolucare.png",
    onPressedClbk: () {
      carouselIndex.value = 8;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

WorkExperienceBadge badgeEvolucareMobile = WorkExperienceBadge(
    title: "Mobile",
    iconAssetPath: "lib/assets/bubble_content/employer/badge_evolucare.png",
    onPressedClbk: () {
      carouselIndex.value = 9;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
    });

ValueListenableBuilder badgeEvolucareBorne = ValueListenableBuilder(
    valueListenable: appLanguage,
    builder: (context, language, widget) {
      return WorkExperienceBadge(
          title: AppStrings.EVOLUCARE_BORNE_BADGE[language]!,
          iconAssetPath:
              "lib/assets/bubble_content/employer/badge_evolucare.png",
          onPressedClbk: () {
            carouselIndex.value = 10;
            globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
          });
    });
