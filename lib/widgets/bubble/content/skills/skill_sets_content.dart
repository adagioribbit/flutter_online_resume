import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart'
    show ScrollablePositionedList;

import '../../../../helpers/globals.dart'
    show SkillKey, initialScrollSkillItem, skillListScrollController;
import 'skill_list_item.dart' show SkillListItem;
import 'skills.dart' show skills;

class SkillSetsContent extends StatefulWidget {
  const SkillSetsContent({super.key});

  @override
  State<SkillSetsContent> createState() => _SkillSetsContentState();
}

class _SkillSetsContentState extends State<SkillSetsContent> {
  @override
  void initState() {
    super.initState();

    /// Autoscroll skillList
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (initialScrollSkillItem.value != SkillKey.none) {
        int targetIdx =
            (SkillKey.values.indexOf(initialScrollSkillItem.value) - 2)
                .clamp(0, skills.length);

        if (targetIdx > 3) {
          Future.delayed(const Duration(milliseconds: 150), () {
            skillListScrollController.scrollTo(
                index: targetIdx,
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeInOutExpo);
            setState(() {});
          });
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    initialScrollSkillItem.value = SkillKey.none;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double listItemSpacing = constraints.maxWidth * 0.0125;

      ScrollablePositionedList list = ScrollablePositionedList.builder(
          initialScrollIndex:
              (SkillKey.values.indexOf(initialScrollSkillItem.value) - 10)
                  .clamp(0, skills.length),
          itemCount: skills.length,
          itemScrollController: skillListScrollController,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, listItemSpacing),
                child: SkillListItem(skill: skills[index]));
          });

      double settingsButtonSize = (constraints.maxWidth * 0.08).clamp(0.5, 40);
      double settingsButtonContainerSize = settingsButtonSize * 1.25;

      return Container(
          constraints: BoxConstraints(
              maxHeight: constraints.maxHeight * 0.95,
              maxWidth: constraints.maxWidth * 0.9),
          child: Stack(children: [
            list,
            //skillListFilterForm,
            //Positioned(
            //    bottom: 0,
            //    right: 0,
            //    child: Container(
            //        height: settingsButtonContainerSize,
            //        width: settingsButtonContainerSize,
            //        decoration: BoxDecoration(
            //          color: Color.fromARGB(117, 255, 255, 255),
            //          border:
            //              Border.all(color: Colors.orangeAccent, width: 3.0),
            //          borderRadius:
            //              const BorderRadius.all(Radius.circular(100)),
            //        ),
            //        child: IconButton(
            //          padding: EdgeInsets.all(0),
            //          icon: Icon(
            //            color: Colors.orangeAccent,
            //            size: settingsButtonSize,
            //            Icons.search,
            //          ),
            //          onPressed: () {
            //            isVisibleSkillListFilters.value =
            //                !isVisibleSkillListFilters.value;
            //          },
            //        ))),
          ]));
    });
  }
}

SkillSetsContent contentSkillSets = SkillSetsContent();
