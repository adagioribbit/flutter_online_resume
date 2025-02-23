import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/utils.dart';
import 'employer_header.dart';

class WorkExperienceContent extends StatefulWidget
    implements PreferredSizeWidget {
  final Color boxShadowColor, boxBorderColor;
  final EmployerHeader employerHeader;
  final String languages, tools;
  final String? periodDescription, projectTitle, projectDescription;

  const WorkExperienceContent(
      {this.boxShadowColor = Colors.red,
      this.boxBorderColor = Colors.red,
      required this.employerHeader,
      this.periodDescription = "Test",
      this.projectTitle = "Test",
      this.projectDescription = "Test",
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
    return SizedBox.expand(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double marginContainer = constraints.maxHeight * 0.025;
      double periodFontSize = constraints.maxHeight * 0.025;
      double titleFontSize = constraints.maxHeight * 0.03;
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
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            double paddingHorizontalListView = constraints.maxWidth * 0.05;
            double paddingVerticalListView = constraints.maxWidth * 0.05;
            return ListView(
                padding: EdgeInsets.fromLTRB(
                    paddingHorizontalListView,
                    paddingVerticalListView,
                    paddingHorizontalListView,
                    paddingVerticalListView),
                children: [
                  widget.employerHeader,
                  Text(widget.periodDescription.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: periodFontSize,
                          fontStyle: FontStyle.italic)),
                  Text(widget.projectTitle.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold)),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(5, 25, 5, 25),
                      child: Builder(builder: (BuildContext context) {
                        List<String> sentences =
                            widget.projectDescription.toString().split('\t');

                        List<InlineSpan> richTextChildren = [];
                        for (String sentence in sentences) {
                          richTextChildren
                              .add(WidgetSpan(child: SizedBox(width: 40.0)));
                          richTextChildren.add(TextSpan(
                              text: sentence,
                              style: TextStyle(
                                  fontSize: 16, fontFamily: "Courier")));
                        }
                        return RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(children: richTextChildren));
                      }))
                ]);
          }));
    }));
  }
}
