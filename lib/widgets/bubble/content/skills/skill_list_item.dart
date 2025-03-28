import 'package:dossier_de_competences_web/helpers/colorchart.dart'
    show skillsSetButtonPalette;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show SkillKey, initialScrollSkillItem, skillListScrollController;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_gauge.dart';
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skills.dart'
    show Skill;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/wrap_expansion_tile.dart'
    show WrapExpansionTile;
import 'package:flutter/material.dart';

class SkillListItem extends StatefulWidget {
  final Skill skill;

  const SkillListItem({required this.skill, super.key});

  @override
  State<SkillListItem> createState() => _SkillListItemState();
}

class _SkillListItemState extends State<SkillListItem> {
  @override
  Widget build(BuildContext context) {
    SkillListItem thatSkillListItem = widget;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double titleFontSize = (constraints.maxWidth * 0.03).clamp(15, 18);
      bool isExpanded =
          initialScrollSkillItem.value == thatSkillListItem.skill.key;

      return WrapExpansionTile(
          initiallyExpanded: isExpanded,
          onExpansionChanged: (isExpanded) {
            if (isExpanded) {
              int idx =
                  (SkillKey.values.indexOf(thatSkillListItem.skill.key) - 3)
                      .clamp(0, SkillKey.values.length);

              /// Scroll skillList to item
              skillListScrollController.scrollTo(
                  index: idx, duration: Duration(milliseconds: 1000));
            }
          },
          backgroundColor: skillsSetButtonPalette.radientStop2,
          collapsedBackgroundColor: skillsSetButtonPalette.radientStop3,
          tilePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          collapsedShape: RoundedRectangleBorder(
            side: BorderSide(color: skillsSetButtonPalette.border, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: skillsSetButtonPalette.border, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          leading: Image(
            image: AssetImage(thatSkillListItem.skill.iconAssetPath),
          ),
          title: Text(thatSkillListItem.skill.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: titleFontSize,
                  fontFamily: "RussoOne",
                  fontWeight: FontWeight.bold)),
          subtitle: SkillGauge(
              nbYearsPractice: thatSkillListItem.skill.nbYearsPractice),
          children: thatSkillListItem.skill.experiences);
    });
  }
}
