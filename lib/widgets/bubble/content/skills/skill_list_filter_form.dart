import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/globals.dart'
    show appLanguage, isVisibleSkillListFilters;

class SkillListFilterForm extends StatefulWidget
    implements PreferredSizeWidget {
  const SkillListFilterForm({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SkillListFilterForm> createState() => _SkillListFilterFormState();
}

class _SkillListFilterFormState extends State<SkillListFilterForm>
    with TickerProviderStateMixin {
  final Duration durationAnimation = Duration(milliseconds: 250);
  late AnimationController _animationToggleController;
  late Animation<double> _animationToggle;
  double opacityAnimationSpeedFactor = 1;
  SortingOptions? _sortBy = SortingOptions.title;

  @override
  void initState() {
    super.initState();
    _animationToggleController =
        AnimationController(vsync: this, duration: durationAnimation);

    _animationToggle = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationToggleController, curve: Curves.linear),
    );

    isVisibleSkillListFilters.addListener(() async {
      if (isVisibleSkillListFilters.value) {
        _animationToggleController.forward();
      } else {
        _animationToggleController.reverse();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _animationToggleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return AnimatedBuilder(
          animation: _animationToggleController,
          builder: (context, _) {
            double animatedHeight =
                constraints.maxHeight * _animationToggle.value;
            double animatedWidth =
                constraints.maxWidth * _animationToggle.value;

            Form formFilters = Form(
                child: Material(
                    child: Container(
              constraints: BoxConstraints(
                maxHeight: animatedHeight,
                maxWidth: animatedWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: animatedWidth * .1),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(226, 255, 255, 255),
                        border:
                            Border.all(color: Colors.orangeAccent, width: .5),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                                dense: true,
                                title: Text(
                                    AppStrings
                                        .TITLE_LANGUAGES[appLanguage.value]
                                        .toString(),
                                    style: TextStyle(height: .7, fontSize: 12),
                                    overflow: TextOverflow.fade),
                                leading: Checkbox(
                                  value: true,
                                  onChanged: (isChecked) {},
                                )),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings.TITLE_TOOLS[appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {
                                  print('');
                                },
                              ),
                            ),
                          ])),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: animatedWidth * .1),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(226, 255, 255, 255),
                        border:
                            Border.all(color: Colors.orangeAccent, width: .5),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings
                                      .TITLE_WEB_DEVELOPMENT[appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings.TITLE_MOBILE_DEVELOPMENT[
                                          appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings.TITLE_BUSINESS_INTELLIGENCE[
                                          appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings.TITLE_ARTIFICIAL_INTELLIGENCE[
                                          appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings.TITLE_BACK_END_DEVELOPMENT[
                                          appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings.TITLE_DEVOPS[appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings.TITLE_TEAMWORK[appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text(
                                  AppStrings
                                      .TITLE_OTHER_SKILLS[appLanguage.value]
                                      .toString(),
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Checkbox(
                                value: true,
                                onChanged: (isChecked) {},
                              ),
                            ),
                          ])),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: animatedWidth * .1),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(226, 255, 255, 255),
                        border:
                            Border.all(color: Colors.orangeAccent, width: .5),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ListTile(
                              dense: true,
                              title: Text('Par ordre alphabétique',
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Radio<SortingOptions>(
                                value: SortingOptions.title,
                                groupValue: _sortBy,
                                onChanged: (SortingOptions? value) {
                                  setState(() {
                                    _sortBy = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text('Par type',
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Radio<SortingOptions>(
                                value: SortingOptions.type,
                                groupValue: _sortBy,
                                onChanged: (SortingOptions? value) {
                                  setState(() {
                                    _sortBy = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text('Par usage',
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Radio<SortingOptions>(
                                value: SortingOptions.usage,
                                groupValue: _sortBy,
                                onChanged: (SortingOptions? value) {
                                  setState(() {
                                    _sortBy = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              dense: true,
                              title: Text('Par date de dernière utilisation',
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Radio<SortingOptions>(
                                splashRadius: 5,
                                value: SortingOptions.dateLastUsed,
                                groupValue: _sortBy,
                                onChanged: (SortingOptions? value) {
                                  setState(() {
                                    _sortBy = value;
                                  });
                                },
                              ),
                            ),
                            ListTile(
                              title: Text('Par années d\'expérience',
                                  style: TextStyle(height: .7, fontSize: 12),
                                  overflow: TextOverflow.fade),
                              leading: Radio<SortingOptions>(
                                value: SortingOptions.nbYearsPractice,
                                groupValue: _sortBy,
                                onChanged: (SortingOptions? value) {
                                  setState(() {
                                    _sortBy = value;
                                  });
                                },
                              ),
                            ),
                          ]))
                ],
              ),
            )));

            Container content = Container(
                height: animatedHeight * 0.95,
                width: animatedWidth * 0.95,
                margin: EdgeInsets.symmetric(
                    vertical: animatedHeight * 0.00512,
                    horizontal: animatedWidth * 0.00512),
                decoration: BoxDecoration(
                  color: Color.fromARGB(226, 255, 255, 255),
                  border: Border.all(color: Colors.orangeAccent, width: .5),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: formFilters);

            return Stack(children: [
              Transform(
                  alignment: FractionalOffset.center,
                  origin: Offset.zero,
                  transform: Matrix4.identity()
                    // Translate X
                    ..setEntry(
                        0, 3, constraints.maxWidth - (animatedWidth * 0.925))
                    // Translate Y
                    ..setEntry(
                        1, 3, constraints.maxHeight - (animatedHeight * 0.925)),
                  child: content)
            ]);
          });
    });
  }
}

enum SortingOptions { title, type, usage, dateLastUsed, nbYearsPractice }

SkillListFilterForm skillListFilterForm = SkillListFilterForm();
