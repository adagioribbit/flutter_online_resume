import 'package:flutter/material.dart' show Color;

import '../employer_header.dart' show EmployerHeader;
import '../work_experience_content.dart' show WorkExperienceContent;

class AmiltoneContent extends WorkExperienceContent {
  static const Color amiltoneBorderColor = Color.fromARGB(255, 206, 48, 137);
  static const Color amiltoneShadowColor = Color.fromARGB(127, 206, 48, 137);
  static const EmployerHeader amiltoneHeader = EmployerHeader(
      employerLogoAssetPath: "lib/assets/bubble_content/employer/amiltone.png");

  const AmiltoneContent(
      {required super.periodDescription,
      required super.projectDescription,
      super.externalLinks = const [],
      required super.languages,
      required super.tools,
      required super.projectTasks,
      super.key})
      : super(
            boxShadowColor: amiltoneShadowColor,
            boxBorderColor: amiltoneBorderColor,
            employerHeader: amiltoneHeader);
}
