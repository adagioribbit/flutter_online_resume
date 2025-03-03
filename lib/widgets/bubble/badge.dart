import 'package:dossier_de_competences_web/helpers/colorchart.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final String title, iconAssetPath;
  final double iconHeight;
  final VoidCallback? onPressedClbk;

  const Badge(
      {required this.onPressedClbk,
      required this.title,
      required this.iconAssetPath,
      this.iconHeight = 25.0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double titleFontSize = (constraints.maxWidth * 0.023).clamp(13, 18),
          imageHeight = constraints.maxWidth * 0.08;
      return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: onPressedClbk,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: .5, color: skillsSetButtonPalette.icon),
                    borderRadius:
                        BorderRadius.all(Radius.circular(titleFontSize)),
                    boxShadow: [
                      BoxShadow(
                        color: skillsSetButtonPalette.iconHover,
                        blurRadius: 3,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                  padding: EdgeInsets.all(5),
                  child: Column(children: [
                    IconButton(
                      hoverColor: Colors.transparent,
                      icon: Image(
                          height: imageHeight,
                          image: AssetImage(iconAssetPath)),
                      onPressed: onPressedClbk,
                    ),
                    Text(title,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: titleFontSize))
                  ]))));
    });
  }
}

class EducationBadge extends Badge {
  const EducationBadge(
      {super.key,
      required super.onPressedClbk,
      required super.title,
      required super.iconAssetPath});
}

class WorkExperienceBadge extends Badge {
  const WorkExperienceBadge(
      {super.key,
      required super.onPressedClbk,
      required super.title,
      required super.iconAssetPath});
}

class SkillBadge extends Badge {
  const SkillBadge(
      {super.key,
      required super.onPressedClbk,
      required super.title,
      required super.iconAssetPath});
}
