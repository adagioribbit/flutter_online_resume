import 'package:flutter/material.dart' show Color;

import '../employer_header.dart' show EmployerHeader;
import '../work_experience_content.dart' show WorkExperienceContent;

class PrastelContent extends WorkExperienceContent {
  static const Color prastelBorderColor = Color.fromARGB(255, 1, 40, 91);
  static const Color prastelShadowColor = Color.fromARGB(127, 1, 40, 91);
  static const EmployerHeader prastelHeader = EmployerHeader(
      employerLogoAssetPath: "lib/assets/bubble_content/employer/prastel.png");

  const PrastelContent(
      {required super.periodDescription,
      required super.projectDescription,
      super.externalLinks = const [],
      required super.languages,
      required super.tools,
      required super.projectTasks,
      super.key})
      : super(
            boxShadowColor: prastelShadowColor,
            boxBorderColor: prastelBorderColor,
            employerHeader: prastelHeader);
}
