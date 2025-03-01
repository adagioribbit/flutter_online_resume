import 'package:dossier_de_competences_web/helpers/globals.dart'
    show skillList, skillListScrollController;
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart'
    show ScrollablePositionedList;

import '../../../../helpers/constants.dart';

class SkillSetsContent extends StatefulWidget implements PreferredSizeWidget {
  const SkillSetsContent({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SkillSetsContent> createState() => _SkillSetsContentState();
}

class _SkillSetsContentState extends State<SkillSetsContent>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      //double paddingHorizontalListView = constraints.maxWidth * 0.05,
      //    paddingVerticalListView = constraints.maxWidth * 0.05,
      //    titleFontSize = constraints.maxHeight * 0.03;

      //return ListView(
      //    controller: skillListScrollController,
      //
      //    padding: EdgeInsets.fromLTRB(
      //        paddingHorizontalListView,
      //        paddingVerticalListView,
      //        paddingHorizontalListView,
      //        paddingVerticalListView),
      //    children: skillList);

      return Container(
          constraints: BoxConstraints(
              maxHeight: constraints.maxHeight * 0.95,
              maxWidth: constraints.maxWidth * 0.9),
          child: ScrollablePositionedList.builder(
              itemCount: skillList.length,
              itemScrollController: skillListScrollController,
              itemBuilder: (context, index) {
                return skillList[index];
              }));
    });
  }
}
