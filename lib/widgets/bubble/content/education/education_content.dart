import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
    show SkillBadge;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart' show SemanticsBinding;

import '../../../../helpers/constants.dart';
import '../../../../helpers/globals.dart'
    show appLanguage, educationContentScrollController;

class EducationContent extends StatefulWidget {
  final Color boxShadowColor, boxBorderColor;
  final List<SkillBadge> languages, tools;
  final String academicLogoAssetPath;
  final String? periodDescription, degreeDescription, curriculumDescription;
  final List<ExternalLink> externalLinks;

  const EducationContent(
      {required this.boxShadowColor,
      required this.boxBorderColor,
      required this.academicLogoAssetPath,
      required this.periodDescription,
      required this.degreeDescription,
      this.externalLinks = const [],
      required this.curriculumDescription,
      required this.languages,
      required this.tools,
      super.key});

  @override
  State<EducationContent> createState() => _EducationContentState();
}

class _EducationContentState extends State<EducationContent> {
  @override
  void initState() {
    super.initState();
    SemanticsBinding.instance.ensureSemantics().dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double paddingHorizontalListView = constraints.maxWidth * 0.05,
          paddingVerticalListView = constraints.maxWidth * 0.05,
          marginContainer = constraints.maxHeight * 0.025,
          titleFontSize = constraints.maxHeight * 0.03,
          contentFontSize = (constraints.maxWidth * 0.033).clamp(12, 18),
          externalLinkHeight = constraints.maxHeight * 0.1;

      List<Widget> content = [
        ExcludeSemantics(
            excluding: true,
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Image(
                    height: 100.0,
                    image: AssetImage(widget.academicLogoAssetPath)))),
        ExcludeSemantics(
            excluding: true,
            child: Text(widget.periodDescription.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: titleFontSize,
                    fontStyle: FontStyle.italic))),
        ExcludeSemantics(
            excluding: true,
            child: Text(widget.degreeDescription.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold))),
        ExcludeSemantics(
            excluding: true,
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                child: Builder(builder: (BuildContext context) {
                  List<String> sentences =
                      widget.curriculumDescription.toString().split('\t');

                  List<InlineSpan> richTextChildren = [];
                  for (String sentence in sentences) {
                    richTextChildren
                        .add(WidgetSpan(child: SizedBox(width: 40.0)));
                    richTextChildren.add(TextSpan(
                        text: sentence,
                        style: TextStyle(
                            fontSize: contentFontSize, fontFamily: "Courier")));
                  }
                  return RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(children: richTextChildren));
                })))
      ];

      if (widget.externalLinks.isNotEmpty) {
        if (!widget.academicLogoAssetPath.contains("upec")) {
          content.add(ExcludeSemantics(
              excluding: true,
              child: Text(
                  AppStrings.TITLE_DETAILS[appLanguage.value].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.bold))));
        }

        content.add(ExcludeSemantics(
            excluding: true,
            child: Container(
                height: externalLinkHeight,
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: titleFontSize,
                    children: widget.externalLinks))));
      }

      if (widget.languages.isNotEmpty) {
        content.add(ExcludeSemantics(
            excluding: true,
            child: Text(
                AppStrings.TITLE_LANGUAGES[appLanguage.value].toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold))));

        content.add(ExcludeSemantics(
            excluding: true,
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: widget.boxBorderColor, width: 0.5),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Column(children: [
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    children: widget.languages,
                  )
                ]))));
      }

      if (widget.tools.isNotEmpty) {
        content.add(ExcludeSemantics(
            excluding: true,
            child: Text(AppStrings.TITLE_TOOLS[appLanguage.value].toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold))));

        content.add(ExcludeSemantics(
            excluding: true,
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: widget.boxBorderColor, width: 0.5),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
                child: Column(children: [
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    children: widget.tools,
                  )
                ]))));
      }

      return Container(
          margin:
              EdgeInsets.symmetric(horizontal: 0, vertical: marginContainer),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: widget.boxShadowColor,
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(-2, -2),
                ),
                BoxShadow(
                  color: widget.boxShadowColor,
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              border: Border.all(color: widget.boxBorderColor, width: 0.5)),
          child: ListView(
              controller: educationContentScrollController,
              padding: EdgeInsets.symmetric(
                  horizontal: paddingHorizontalListView,
                  vertical: paddingVerticalListView),
              children: content));
    }));
  }
}
