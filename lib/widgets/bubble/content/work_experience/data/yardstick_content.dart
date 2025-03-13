import 'package:flutter/material.dart' show Color;

import '../employer_header.dart' show EmployerHeader;
import '../work_experience_content.dart' show WorkExperienceContent;

class YardStickContent extends WorkExperienceContent {
  static const Color yardstickBorderColor = Color.fromARGB(255, 0, 139, 19);
  static const Color yardstickShadowColor = Color.fromARGB(127, 0, 139, 19);
  static const EmployerHeader yardstickHeader = EmployerHeader(
      employerLogoAssetPath:
          "lib/assets/bubble_content/employer/yardstick.png");

  const YardStickContent(
      {required super.periodDescription,
      required super.projectDescription,
      super.externalLinks = const [],
      required super.languages,
      required super.tools,
      required super.projectTasks,
      super.key})
      : super(
            boxShadowColor: yardstickShadowColor,
            boxBorderColor: yardstickBorderColor,
            employerHeader: yardstickHeader);
}
