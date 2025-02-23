import 'package:flutter/material.dart' show Color, ValueListenableBuilder;

import '../../../../../helpers/globals.dart' as globals;
import '../employer_header.dart';
import '../work_experience_content.dart';

ValueListenableBuilder content_amiltone_migration = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_iot = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_powerbi = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_wso2 = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/amiltone.png"));
    });

ValueListenableBuilder content_amiltone_android = ValueListenableBuilder(
    valueListenable: globals.appLanguage,
    builder: (context, value, widget) {
      return WorkExperienceContent(
          boxBorderColor: Color.fromARGB(255, 206, 48, 137),
          boxShadowColor: Color.fromARGB(127, 206, 48, 137),
          employerHeader:
              EmployerHeader(employerLogoAssetPath: "lib/assets/amiltone.png"));
    });
