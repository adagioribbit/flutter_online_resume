import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/helpers/utils.dart' show Utils;
import 'package:flutter/material.dart';

import 'helpers/globals.dart' show GlobalKeyRing, appLanguage, isDarkMode;
import 'widgets/bubble/bubble_carousel.dart';
import 'widgets/appbar/site_header.dart';
import 'widgets/toolbar/toolbar.dart';

void main() => runApp(const CardAndTabApp());

class CardAndTabApp extends StatefulWidget implements PreferredSizeWidget {
  const CardAndTabApp({super.key});

  @override
  Size get preferredSize => Size.fromHeight(Utils.screenHeight);

  Size getPreferredSize() => preferredSize;

  @override
  State<CardAndTabApp> createState() => _CardAndTabAppState();
}

class _CardAndTabAppState extends State<CardAndTabApp> {
  late bool isPortrait;

  @override
  void initState() {
    super.initState();
    isPortrait = Utils.isPhoneView();

    appLanguage.addListener(() => setState(() {}));
    isDarkMode.addListener(() => setState(() {}));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isPortrait = Utils.isPortraitContext(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.APP_TITLE,
        home: SizedBox.expand(
            child: Stack(children: [
          SizedBox.expand(
              child: Image(
                  image: AssetImage("lib/assets/wooden_floor.png"),
                  fit: isPortrait ? BoxFit.none : BoxFit.fitWidth,
                  repeat: ImageRepeat.repeat,
                  alignment: Alignment.center
                  // Cover = léger resize, mais sûrement du aux marges
                  // Contain, fitHeight, fitWidth = resize mais ratio intact
                  // fill = resize sans conservation du ratio
                  )),
          BubbleCarousel(
            key: GlobalKeyRing.bubbleCarousel,
          ),
          SiteHeader(),
          Toolbar(),
        ])));
  }
}
