import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
    show SkillBadge;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/globals.dart'
    show
        appLanguage,
        educationContentScrollController;

class EducationContent extends StatefulWidget implements PreferredSizeWidget {
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
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<EducationContent> createState() => _EducationContentState();
}

class _EducationContentState extends State<EducationContent> {
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
    return SizedBox.expand(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double paddingHorizontalListView = constraints.maxWidth * 0.05,
          paddingVerticalListView = constraints.maxWidth * 0.05,
          marginContainer = constraints.maxHeight * 0.025,
          titleFontSize = constraints.maxHeight * 0.03,
          contentFontSize = constraints.maxHeight * 0.02,
          externalLinkHeight = constraints.maxHeight * 0.1;

      List<Widget> content = [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Image(
                height: 100.0,
                image: AssetImage(widget.academicLogoAssetPath))),
        Text(widget.periodDescription.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: titleFontSize, fontStyle: FontStyle.italic)),
        Text(widget.degreeDescription.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: titleFontSize, fontWeight: FontWeight.bold)),
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(5, 25, 5, 25),
            child: Builder(builder: (BuildContext context) {
              List<String> sentences =
                  widget.curriculumDescription.toString().split('\t');

              List<InlineSpan> richTextChildren = [];
              for (String sentence in sentences) {
                richTextChildren.add(WidgetSpan(child: SizedBox(width: 40.0)));
                richTextChildren.add(TextSpan(
                    text: sentence,
                    style: TextStyle(
                        fontSize: contentFontSize, fontFamily: "Courier")));
              }
              return RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(children: richTextChildren));
            }))
      ];

      if (widget.externalLinks.isNotEmpty) {
        if (!widget.academicLogoAssetPath.contains("upec")) {
          content.add(ValueListenableBuilder(
              valueListenable: appLanguage,
              builder: (context, value, widget) {
                return Text(AppStrings.TITLE_DETAILS[value].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: titleFontSize, fontWeight: FontWeight.bold));
              }));
        }
        content.add(Container(
            height: externalLinkHeight,
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: titleFontSize,
                children: widget.externalLinks)));
      }

      if (widget.languages.isNotEmpty) {
        content.add(ValueListenableBuilder(
            valueListenable: appLanguage,
            builder: (context, value, widget) {
              return Text(AppStrings.TITLE_LANGUAGES[value].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: titleFontSize, fontWeight: FontWeight.bold));
            }));
        content.add(Container(
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
            ])));
      }

      if (widget.tools.isNotEmpty) {
        content.add(ValueListenableBuilder(
            valueListenable: appLanguage,
            builder: (context, value, widget) {
              return Text(AppStrings.TITLE_TOOLS[value].toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: titleFontSize, fontWeight: FontWeight.bold));
            }));
        content.add(Container(
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
            ])));
      }

      return Container(
          margin: EdgeInsets.fromLTRB(0, marginContainer, 0, marginContainer),
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
              padding: EdgeInsets.fromLTRB(
                  paddingHorizontalListView,
                  paddingVerticalListView,
                  paddingHorizontalListView,
                  paddingVerticalListView),
              children: content));
    }));
  }
}
