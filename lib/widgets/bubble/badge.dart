import 'package:dossier_de_competences_web/helpers/colorchart.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final String title, iconAssetPath;
  final Color borderColor;
  final double iconHeight;
  final VoidCallback? onPressedClbk;

  const Badge(
      {required this.title,
      required this.iconAssetPath,
      required this.borderColor,
      this.iconHeight = 25.0,
      required this.onPressedClbk,
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
                    border: Border.all(width: .5, color: borderColor),
                    borderRadius:
                        BorderRadius.all(Radius.circular(titleFontSize)),
                    boxShadow: [
                      BoxShadow(
                        color: borderColor,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: -2,
                        blurRadius: 5,
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
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: titleFontSize))
                  ]))));
    });
  }
}

class EducationBadge extends Badge {
  EducationBadge(title, iconAssetPath, onPressedClbk, {super.key})
      : super(
          title: title,
          iconAssetPath: iconAssetPath,
          borderColor: educationButtonPalette.icon,
          onPressedClbk: onPressedClbk,
        );
}

class WorkExperienceBadge extends Badge {
  WorkExperienceBadge(title, iconAssetPath, onPressedClbk, {super.key})
      : super(
          title: title,
          iconAssetPath: iconAssetPath,
          borderColor: workExperienceButtonPalette.icon,
          onPressedClbk: onPressedClbk,
        );
}

class SkillBadge extends Badge {
  SkillBadge(title, iconAssetPath, onPressedClbk, {super.key})
      : super(
          title: title,
          iconAssetPath: iconAssetPath,
          borderColor: skillsSetButtonPalette.icon,
          onPressedClbk: onPressedClbk,
        );
}
