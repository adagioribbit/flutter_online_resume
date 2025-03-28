import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart' show SemanticsProperties;

import '../../helpers/constants.dart';
import '../../helpers/globals.dart' show ToolbarMenu, appLanguage;
import '../../helpers/colorchart.dart'
    show
        educationButtonPalette,
        skillsSetButtonPalette,
        workExperienceButtonPalette,
        ColorChart;
import 'toolbar_button.dart';

class Toolbar extends StatefulWidget {
  const Toolbar({super.key});

  @override
  State<Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, value, widget) {
          return Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: Constants.TOOLBAR_HEIGHT,
                decoration: BoxDecoration(
                  color: ColorChart.appBarBackground,
                  border: Border(
                      top: BorderSide(
                          color: ColorChart.toolbarBorder, width: 1.0),
                      left: BorderSide(
                          color: ColorChart.toolbarBorder, width: 0.5),
                      right: BorderSide(
                          color: ColorChart.toolbarBorder, width: 0.5)),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorChart.toolbarBoxShadow,
                      spreadRadius: 5,
                      blurRadius: 30,
                      offset: Offset(10, -15),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Semantics.fromProperties(
                        properties: SemanticsProperties(
                            enabled: true, focusable: false, button: false),
                        child: ExcludeSemantics(
                            excluding: true,
                            child: ToolbarButton(
                              idMenu: ToolbarMenu.btnEducation,
                              tooltip: AppStrings.EDUCATION_TOOLTIP[value],
                              imageAssetPath:
                                  "lib/assets/toolbar/bachelor_hat.png",
                              palette: educationButtonPalette,
                            ))),
                    Semantics.fromProperties(
                        properties: SemanticsProperties(
                            enabled: true, focusable: false, button: false),
                        child: ExcludeSemantics(
                            excluding: true,
                            child: ToolbarButton(
                              idMenu: ToolbarMenu.btnSkillsSet,
                              tooltip: AppStrings.SKILL_SETS_TOOLTIP[value],
                              imageAssetPath:
                                  "lib/assets/toolbar/skills_set.png",
                              palette: skillsSetButtonPalette,
                            ))),
                    Semantics.fromProperties(
                        properties: SemanticsProperties(
                            enabled: true, focusable: false, button: false),
                        child: ExcludeSemantics(
                            excluding: true,
                            child: ToolbarButton(
                              idMenu: ToolbarMenu.btnWorkExperience,
                              tooltip:
                                  AppStrings.WORK_EXPERIENCE_TOOLTIP[value],
                              imageAssetPath:
                                  "lib/assets/toolbar/work_experience.png",
                              palette: workExperienceButtonPalette,
                            ))),
                  ],
                ),
              ));
        });
  }
}
