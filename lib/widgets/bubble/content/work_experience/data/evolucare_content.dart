import 'package:flutter/material.dart' show Color;

import '../employer_header.dart' show EmployerHeader;
import '../work_experience_content.dart' show WorkExperienceContent;

class EvolucareContent extends WorkExperienceContent {
  static const Color evolucareBorderColor = Color.fromARGB(255, 235, 90, 15);
  static const Color evolucareShadowColor = Color.fromARGB(127, 235, 90, 15);
  static const EmployerHeader evolucareHeader = EmployerHeader(
      employerLogoAssetPath:
          "lib/assets/bubble_content/employer/evolucare.png");

  const EvolucareContent(
      {required super.periodDescription,
      required super.projectDescription,
      super.externalLinks = const [],
      required super.languages,
      required super.tools,
      required super.projectTasks,
      super.key})
      : super(
            boxShadowColor: evolucareShadowColor,
            boxBorderColor: evolucareBorderColor,
            employerHeader: evolucareHeader);
}
