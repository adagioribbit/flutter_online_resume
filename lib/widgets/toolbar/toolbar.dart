import 'package:dossier_de_competences_web/widgets/toolbar/toolbar_button.dart';
import 'package:flutter/material.dart';
import '../../helpers/colorchart.dart'
    show
        educationButtonPalette,
        skillsSetButtonPalette,
        workExperienceButtonPalette,
        ColorChart;
import '../../helpers/constants.dart';
import '../../helpers/globals.dart' show ToolbarMenu, appLanguage;

class Toolbar extends StatefulWidget implements PreferredSizeWidget {
  const Toolbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => {});
  }

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
                    ToolbarButton(
                      idMenu: ToolbarMenu.btnEducation,
                      tooltip: AppStrings.EDUCATION_TOOLTIP[value],
                      imageAssetPath: "lib/assets/toolbar/bachelor_hat.png",
                      palette: educationButtonPalette,
                    ),
                    ToolbarButton(
                      idMenu: ToolbarMenu.btnSkillsSet,
                      tooltip: AppStrings.SKILL_SETS_TOOLTIP[value],
                      imageAssetPath: "lib/assets/toolbar/skills_set.png",
                      palette: skillsSetButtonPalette,
                    ),
                    ToolbarButton(
                      idMenu: ToolbarMenu.btnWorkExperience,
                      tooltip: AppStrings.WORK_EXPERIENCE_TOOLTIP[value],
                      imageAssetPath: "lib/assets/toolbar/work_experience.png",
                      palette: workExperienceButtonPalette,
                    ),
                  ],
                ),
              ));
        });
  }
}
