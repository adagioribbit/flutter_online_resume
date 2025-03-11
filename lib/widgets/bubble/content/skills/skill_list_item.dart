import 'dart:async';

import 'package:dossier_de_competences_web/helpers/colorchart.dart'
    show skillsSetButtonPalette;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show
        SkillKey,
        SkillType,
        SkillUsage,
        appLanguage,
        initialScrollSkillItem,
        skillListScrollController;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_gauge.dart';
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/wrap_expansion_tile.dart'
    show WrapExpansionTile;
import 'package:flutter/material.dart';
import '../../../../helpers/constants.dart';
import '../../../../helpers/global_streams.dart';

class SkillListItem extends StatefulWidget implements PreferredSizeWidget {
  final SkillKey skillKey;
  final SkillType type;
  final SkillUsage usage;
  final String iconAssetPath, title;
  final double nbYearsPractice;
  final DateTime dateLastUsed;
  final List<Widget> experiences;

  const SkillListItem(
      {required this.skillKey,
      required this.type,
      required this.usage,
      required this.iconAssetPath,
      required this.title,
      required this.nbYearsPractice,
      required this.dateLastUsed,
      required this.experiences,
      super.key});

  Map<Type, dynamic> _toSortMap() {
    return {
      String: title,
      SkillType: type,
      SkillUsage: usage,
      double: nbYearsPractice,
      DateTime: dateLastUsed,
    };
  }

  dynamic get(Type propertyType) {
    var objMap = _toSortMap();
    if (objMap.containsKey(propertyType)) {
      return objMap[propertyType];
    }
    throw ArgumentError('Propery type not found in SkillListItem object');
  }

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SkillListItem> createState() => _SkillListItemState();
}

class _SkillListItemState extends State<SkillListItem> {
  late StreamSubscription subscription;

  @override
  void initState() {
    super.initState();

    subscription = globalStreams.eventSkillListItem.listen((value) async {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SkillListItem thatSkillListItem = widget;

    return ValueListenableBuilder(
        valueListenable: appLanguage,
        builder: (context, value, widget) {
          return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            double titleFontSize = (constraints.maxWidth * 0.03).clamp(15, 18);
            bool isExpanded =
                initialScrollSkillItem.value == thatSkillListItem.skillKey;

            return WrapExpansionTile(
                initiallyExpanded: isExpanded,
                onExpansionChanged: (isExpanded) {
                  if (isExpanded) {
                    int idx =
                        (SkillKey.values.indexOf(thatSkillListItem.skillKey) -
                                3)
                            .clamp(0, SkillKey.values.length);

                    /// Scroll skillList to item
                    skillListScrollController.scrollTo(
                        index: idx, duration: Duration(milliseconds: 1000));
                  }
                },
                backgroundColor: skillsSetButtonPalette.radientStop2,
                collapsedBackgroundColor: skillsSetButtonPalette.radientStop3,
                tilePadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                collapsedShape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: skillsSetButtonPalette.border, width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: skillsSetButtonPalette.border, width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                leading: Image(
                  image: AssetImage(thatSkillListItem.iconAssetPath),
                ),
                title: Text(thatSkillListItem.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: titleFontSize,
                        fontFamily: "RussoOne",
                        fontWeight: FontWeight.bold)),
                subtitle: SkillGauge(
                    nbYearsPractice: thatSkillListItem.nbYearsPractice),
                children: thatSkillListItem.experiences);
          });
        });
  }
}
