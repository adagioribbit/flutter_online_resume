import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/globals.dart' as globals;
import '../../../../helpers/utils.dart';

class EducationContent extends StatefulWidget implements PreferredSizeWidget {
  final Color boxShadowColor, boxBorderColor;
  final String academicLogoAssetPath, languages, tools;
  final String? periodDescription, degreeDescription, curriculumDescription;

  const EducationContent(
      {required this.boxShadowColor,
      required this.boxBorderColor,
      required this.academicLogoAssetPath,
      required this.periodDescription,
      required this.degreeDescription,
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

class _EducationContentState extends State<EducationContent>
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
    List<Widget> content = [
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Image(
              height: 100.0, image: AssetImage(widget.academicLogoAssetPath))),
      Text(widget.periodDescription.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
      Text(widget.degreeDescription.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
                  style: TextStyle(fontSize: 16, fontFamily: "Courier")));
            }
            return RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: richTextChildren));
          }))
    ];

    if (widget.languages.isNotEmpty) {
      content.add(ValueListenableBuilder(
          valueListenable: globals.appLanguage,
          builder: (context, value, widget) {
            return Text(AppStrings.LANGUAGES[value].toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
          }));
      content.add(Container(
          decoration: BoxDecoration(
            border: Border.all(color: widget.boxBorderColor, width: 0.5),
          ),
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          child: Text(widget.languages,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 16))));
    }

    if (widget.tools.isNotEmpty) {
      content.add(ValueListenableBuilder(
          valueListenable: globals.appLanguage,
          builder: (context, value, widget) {
            return Text(AppStrings.TOOLS[value].toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
          }));
      content.add(Container(
          decoration: BoxDecoration(
            border: Border.all(color: widget.boxBorderColor, width: 0.5),
          ),
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          child: Text(widget.tools,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 16))));
    }

    return SizedBox.expand(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double paddingHorizontalListView = constraints.maxWidth * 0.05;
      double paddingVerticalListView = constraints.maxWidth * 0.05;
      double marginContainer = constraints.maxHeight * 0.025;
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
              padding: EdgeInsets.fromLTRB(
                  paddingHorizontalListView,
                  paddingVerticalListView,
                  paddingHorizontalListView,
                  paddingVerticalListView),
              children: content));
    }));
  }
}
