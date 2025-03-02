import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart'
    show ScrollablePositionedList;

import '../../../../helpers/constants.dart';
import '../../../../helpers/globals.dart'
    show initialScrollIndex, skillListScrollController;
import '../../../../widgets/bubble/content/skills/skills.dart' show skillList;

class SkillSetsContent extends StatefulWidget implements PreferredSizeWidget {
  const SkillSetsContent({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SkillSetsContent> createState() => _SkillSetsContentState();
}

class _SkillSetsContentState extends State<SkillSetsContent> {
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
      double listItemSpacing = constraints.maxWidth * 0.0125;

      return Container(
          constraints: BoxConstraints(
              maxHeight: constraints.maxHeight * 0.95,
              maxWidth: constraints.maxWidth * 0.9),
          child: ScrollablePositionedList.builder(
              itemCount: skillList.length,
              initialScrollIndex: initialScrollIndex.value,
              itemScrollController: skillListScrollController,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, listItemSpacing),
                    child: skillList[index]);
              }));
    });
  }
}
