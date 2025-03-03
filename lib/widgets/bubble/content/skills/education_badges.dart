import 'package:dossier_de_competences_web/helpers/global_streams.dart'
    show globalStreams;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show ToolbarMenu, carouselIndex;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart';

EducationBadge badgeUpec = EducationBadge(
    title: "UPEC",
    iconAssetPath: "lib/assets/bubble_content/school/badge_upec.png",
    onPressedClbk: () {
      carouselIndex.value = 0;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
    });

EducationBadge badgeGreta = EducationBadge(
    title: "Greta",
    iconAssetPath: "lib/assets/bubble_content/school/badge_greta.png",
    onPressedClbk: () {
      carouselIndex.value = 1;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
    });

EducationBadge badgeLeCnam = EducationBadge(
    title: "CNAM",
    iconAssetPath: "lib/assets/bubble_content/school/badge_le_cnam_paris.png",
    onPressedClbk: () {
      carouselIndex.value = 2;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
    });

EducationBadge badgeLeWagon = EducationBadge(
    title: "Le Wagon",
    iconAssetPath: "lib/assets/bubble_content/school/badge_le_wagon.png",
    onPressedClbk: () {
      carouselIndex.value = 3;
      globalStreams.triggerBubbleCarousel(ToolbarMenu.btnEducation);
    });
