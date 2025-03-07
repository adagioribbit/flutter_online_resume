import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import '../helpers/globals.dart' as globals;
import 'squared_sheet.dart';

class MugginsPresentation extends StatefulWidget {
  const MugginsPresentation({super.key});

  @override
  State<MugginsPresentation> createState() => _MugginsPresentationState();
}

class _MugginsPresentationState extends State<MugginsPresentation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    ValueListenableBuilder instagrit = ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, language, widget) {
          return Text(AppStrings.RESUME_PRESENTATION_INSTAGRIT[language]!,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 40.0,
                  fontFamily: "JustMeAgainDownHere",
                  color: Colors.green));
        });

    return SquaredSheet(
        scaleFactor: 30.0,
        child: SizedBox.expand(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [instagrit])));
  }
}
