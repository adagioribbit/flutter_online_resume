import 'package:dossier_de_competences_web/helpers/globals.dart'
    show appLanguage;
import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/utils.dart';
import 'employer_header.dart';

class WorkExperienceContent extends StatefulWidget
    implements PreferredSizeWidget {
  final Color boxShadowColor, boxBorderColor;
  final EmployerHeader employerHeader;
  final String languages, tools;
  final String? periodDescription, projectDescription;
  final List<String>? projectTasks;

  const WorkExperienceContent(
      {this.boxShadowColor = Colors.red,
      this.boxBorderColor = Colors.red,
      required this.employerHeader,
      this.periodDescription = "Test",
      this.projectDescription = "Test",
      this.projectTasks = const ["Test"],
      this.languages = "Test",
      this.tools = "Test",
      super.key});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<WorkExperienceContent> createState() => _WorkExperienceContentState();
}

class _WorkExperienceContentState extends State<WorkExperienceContent>
    with TickerProviderStateMixin {
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
    WorkExperienceContent widgetContent = widget;

    return SizedBox.expand(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double marginContainer = constraints.maxHeight * 0.025,
          periodFontSize = constraints.maxHeight * 0.025,
          titleFontSize = constraints.maxHeight * 0.03,
          contentFontSize = constraints.maxHeight * 0.02;

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
                  return ListView(
                      padding: EdgeInsets.fromLTRB(paddingHorizontalListView, 0,
                          paddingHorizontalListView, marginContainer),
                      children: [
                        widgetContent.employerHeader,
                        Text(widgetContent.periodDescription.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: periodFontSize,
                                fontStyle: FontStyle.italic)),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(0, titleFontSize, 0, 5),
                            child: Text(
                                AppStrings.TITLE_PROJECT_DESCRIPTION[value]
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: titleFontSize,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: widgetContent.boxBorderColor,
                                  width: 0.5),
                            ),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(contentFontSize),
                            child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(children: [
                                  WidgetSpan(
                                      child:
                                          SizedBox(width: contentFontSize * 3)),
                                  TextSpan(
                                      text: widgetContent.projectDescription
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: contentFontSize,
                                          fontFamily: "Courier"))
                                ]))),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.fromLTRB(0, titleFontSize, 0, 5),
                            child: Text(
                                AppStrings.TITLE_PROJECT_TASKS[value]
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: titleFontSize,
                                    fontWeight: FontWeight.bold))),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: widgetContent.boxBorderColor,
                                  width: 0.5),
                            ),
                            alignment: Alignment.center,
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(contentFontSize),
                                child: Builder(builder: (BuildContext context) {
                                  List<InlineSpan> richTextChildren = [];
                                  for (String sentence
                                      in widgetContent.projectTasks!) {
                                    richTextChildren.add(WidgetSpan(
                                        child: SizedBox(width: 40.0)));
                                    richTextChildren.add(TextSpan(
                                        text: sentence,
                                        style: TextStyle(
                                            fontSize: contentFontSize,
                                            fontFamily: "Courier")));
                                  }
                                  return RichText(
                                      textAlign: TextAlign.justify,
                                      text:
                                          TextSpan(children: richTextChildren));
                                })))
                      ]);
                }));
          });
    }));
  }
}
