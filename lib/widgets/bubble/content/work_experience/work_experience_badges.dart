import 'package:dossier_de_competences_web/helpers/constants.dart';
import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show ToolbarMenu, appLanguage, carouselIndex;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart';

WorkExperienceBadge badgeYardStick = WorkExperienceBadge(
    AppStrings.YARDSTICK_ONLINE_RESUME_BADGE[appLanguage.value]!,
    "lib/assets/bubble_content/employer/badge_yardstick.png", () {
  carouselIndex.value = 0;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgePrastelBT = WorkExperienceBadge(
    "PrastelBT", "lib/assets/bubble_content/employer/badge_prastel.png", () {
  carouselIndex.value = 1;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgePrastelCRN15M = WorkExperienceBadge(
    "CRN15M", "lib/assets/bubble_content/employer/badge_prastel.png", () {
  carouselIndex.value = 2;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgePrastelSiteInterne = WorkExperienceBadge(
    "Web", "lib/assets/bubble_content/employer/badge_prastel.png", () {
  carouselIndex.value = 3;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeAmiltoneMigration = WorkExperienceBadge(
    "Migration", "lib/assets/bubble_content/employer/badge_amiltone.png", () {
  carouselIndex.value = 4;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeAmiltoneIot = WorkExperienceBadge(
    "IoT", "lib/assets/bubble_content/employer/badge_amiltone.png", () {
  carouselIndex.value = 5;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeAmiltonePowerBI = WorkExperienceBadge(
    "Power BI", "lib/assets/bubble_content/employer/badge_amiltone.png", () {
  carouselIndex.value = 6;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeAmiltoneWSO2 = WorkExperienceBadge(
    "WSO2", "lib/assets/bubble_content/employer/badge_amiltone.png", () {
  carouselIndex.value = 7;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeAmiltoneAndroid = WorkExperienceBadge(
    "Android", "lib/assets/bubble_content/employer/badge_amiltone.png", () {
  carouselIndex.value = 8;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeEvolucareImaging = WorkExperienceBadge(
    "Imaging", "lib/assets/bubble_content/employer/badge_evolucare.png", () {
  carouselIndex.value = 9;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeEvolucareMobile = WorkExperienceBadge(
    "Mobile", "lib/assets/bubble_content/employer/badge_evolucare.png", () {
  carouselIndex.value = 10;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});

WorkExperienceBadge badgeEvolucareBorne = WorkExperienceBadge(
    AppStrings.EVOLUCARE_BORNE_BADGE[appLanguage.value]!,
    "lib/assets/bubble_content/employer/badge_evolucare.png", () {
  carouselIndex.value = 11;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnWorkExperience);
});
