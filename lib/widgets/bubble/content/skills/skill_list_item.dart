import 'dart:async';

import 'package:dossier_de_competences_web/helpers/colorchart.dart'
    show skillsSetButtonPalette;
import 'package:dossier_de_competences_web/widgets/bubble/content/skills/skill_gauge.dart';
import 'package:flutter/material.dart';
import '../../../../helpers/constants.dart';
import '../../../../helpers/global_streams.dart';

class SkillListItem extends StatefulWidget implements PreferredSizeWidget {
  final String iconAssetPath, title;
  final double nbYearsPractice;
  final VoidCallback? onPressedClbk;

  const SkillListItem(
      {required this.iconAssetPath,
      required this.title,
      required this.nbYearsPractice,
      this.onPressedClbk,
      super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<SkillListItem> createState() => _SkillListItemState();
}

class _SkillListItemState extends State<SkillListItem>
    with TickerProviderStateMixin {
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
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double titleFontSize = (constraints.maxWidth * 0.03).clamp(15, 18);

      return ExpansionTile(
          backgroundColor: skillsSetButtonPalette.radientStop2,
          collapsedBackgroundColor: skillsSetButtonPalette.radientStop3,
          tilePadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          collapsedShape: RoundedRectangleBorder(
            side: BorderSide(color: skillsSetButtonPalette.border, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: skillsSetButtonPalette.border, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          leading: Image(
            image: AssetImage(widget.iconAssetPath),
          ),
          title: SkillGauge(),
          subtitle: Text(widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: titleFontSize)),
          children: [
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize)),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize)),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize)),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize)),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize)),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize)),
            Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: titleFontSize)),
          ]);
    });
  }
}
