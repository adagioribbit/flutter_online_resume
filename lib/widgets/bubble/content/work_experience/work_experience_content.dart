import 'package:dossier_de_competences_web/helpers/globals.dart'
    show
        appLanguage,
        workExperienceContentScrollController,
        carouselController,
        carouselIndex;
import 'package:dossier_de_competences_web/widgets/bubble/badge.dart'
    show SkillBadge;
import 'package:dossier_de_competences_web/widgets/external_link.dart';
import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import 'employer_header.dart';

class WorkExperienceContent extends StatefulWidget
    implements PreferredSizeWidget {
  final Color boxShadowColor, boxBorderColor;
  final EmployerHeader employerHeader;
  final String? periodDescription, projectDescription;
  final List<ExternalLink> externalLinks;
  final List<SkillBadge> languages, tools;
  final List<String>? projectTasks;

  const WorkExperienceContent(
      {required this.boxShadowColor,
      required this.boxBorderColor,
      required this.employerHeader,
      required this.periodDescription,
      required this.projectDescription,
      this.externalLinks = const [],
      required this.languages,
      required this.tools,
      required this.projectTasks,
      super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<WorkExperienceContent> createState() => _WorkExperienceContentState();
}

class _WorkExperienceContentState extends State<WorkExperienceContent> {
  @override
  void initState() {
    super.initState();

    /// Autoscroll skillList
    WidgetsBinding.instance.addPostFrameCallback((_) {
      carouselController.jumpToPage(carouselIndex.value);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    WorkExperienceContent widgetContent = widget;

    return SizedBox.expand(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double marginContainer = constraints.maxHeight * 0.025,
          titleFontSize = constraints.maxHeight * 0.03,
          contentFontSize = (constraints.maxWidth * 0.033).clamp(12, 18),
          externalLinkHeight = constraints.maxWidth * 0.15;

      return ValueListenableBuilder(
          valueListenable: appLanguage,
          builder: (context, value, widget) {
            return Container(
                margin:
                    EdgeInsets.fromLTRB(0, marginContainer, 0, marginContainer),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: widgetContent.boxShadowColor,
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(-2, -2),
                      ),
                      BoxShadow(
                        color: widgetContent.boxShadowColor,
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(2, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    border: Border.all(
                        color: widgetContent.boxBorderColor, width: 0.5)),
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double paddingHorizontalListView =
                      constraints.maxWidth * 0.05;

                  List<Widget> listViewChildren = [
                    widgetContent.employerHeader,
                    Text(widgetContent.periodDescription.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: titleFontSize,
                            fontStyle: FontStyle.italic)),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0, contentFontSize, 0, 0),
                        child: Text(
                            AppStrings.TITLE_PROJECT_DESCRIPTION[value]
                                .toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: titleFontSize,
                                fontWeight: FontWeight.bold))),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: widgetContent.boxBorderColor, width: 0.5),
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(contentFontSize),
                        margin: EdgeInsets.all(5),
                        child: Text(widgetContent.projectDescription.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: contentFontSize,
                                fontFamily: "Courier")))
                  ];

                  if (widgetContent.externalLinks.isNotEmpty) {
                    listViewChildren.add(Container(
                        height: externalLinkHeight,
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: titleFontSize,
                            children: widgetContent.externalLinks)));
                  }

                  if (widgetContent.languages.isNotEmpty) {
                    listViewChildren.add(ValueListenableBuilder(
                        valueListenable: appLanguage,
                        builder: (context, value, widget) {
                          return Container(
                              alignment: Alignment.center,
                              margin:
                                  EdgeInsets.fromLTRB(0, contentFontSize, 0, 0),
                              child: Text(
                                  AppStrings.TITLE_LANGUAGES[value].toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: titleFontSize,
                                      fontWeight: FontWeight.bold)));
                        }));
                    listViewChildren.add(Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: widgetContent.boxBorderColor, width: 0.5),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        child: Column(children: [
                          Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.center,
                            children: widgetContent.languages,
                          )
                        ])));
                  }

                  if (widgetContent.tools.isNotEmpty) {
                    listViewChildren.add(ValueListenableBuilder(
                        valueListenable: appLanguage,
                        builder: (context, value, widget) {
                          return Container(
                              alignment: Alignment.center,
                              margin:
                                  EdgeInsets.fromLTRB(0, contentFontSize, 0, 0),
                              child: Text(
                                  AppStrings.TITLE_TOOLS[value].toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: titleFontSize,
                                      fontWeight: FontWeight.bold)));
                        }));
                    listViewChildren.add(Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: widgetContent.boxBorderColor, width: 0.5),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        child: Column(children: [
                          Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.center,
                            children: widgetContent.tools,
                          )
                        ])));
                  }

                  listViewChildren.add(Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(
                          0, contentFontSize, 0, contentFontSize),
                      child: Text(
                          AppStrings.TITLE_PROJECT_TASKS[value].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: titleFontSize,
                              fontWeight: FontWeight.bold))));

                  for (String sentence in widgetContent.projectTasks!) {
                    listViewChildren.add(Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                border: Border.all(
                                    color: widgetContent.boxShadowColor,
                                    width: 0.5),
                              ),
                              padding: EdgeInsets.all(contentFontSize * 0.75),
                              margin: EdgeInsets.fromLTRB(
                                  0, 0, 0, contentFontSize * 0.5),
                              child: Text(sentence,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      height: 1.2,
                                      fontSize: contentFontSize,
                                      fontFamily: "Courier")))
                        ]));
                  }

                  return ListView(
                      controller: workExperienceContentScrollController,
                      padding: EdgeInsets.fromLTRB(paddingHorizontalListView, 0,
                          paddingHorizontalListView, marginContainer),
                      children: listViewChildren);
                }));
          });
    }));
  }
}
