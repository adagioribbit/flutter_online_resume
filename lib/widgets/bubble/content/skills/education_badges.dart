import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show ToolbarMenu, carouselIndex;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart';

EducationBadge badgeUpec = EducationBadge(
    "UPEC", "lib/assets/bubble_content/school/badge_upec.png", () {
  carouselIndex.value = 0;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
});

EducationBadge badgeGreta = EducationBadge(
    "Greta", "lib/assets/bubble_content/school/badge_greta.png", () {
  carouselIndex.value = 1;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
});

EducationBadge badgeLeCnam = EducationBadge(
    "CNAM", "lib/assets/bubble_content/school/badge_le_cnam_paris.png", () {
  carouselIndex.value = 2;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
});

EducationBadge badgeLeWagon = EducationBadge(
    "Le Wagon", "lib/assets/bubble_content/school/badge_le_wagon.png", () {
  carouselIndex.value = 3;
  globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
});
