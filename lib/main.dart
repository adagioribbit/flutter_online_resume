import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:dossier_de_competences_web/helpers/utils.dart' show Utils;
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart'
    show SemanticsBinding, SemanticsProperties;

import 'helpers/global_streams.dart' show globalStreams;
import 'helpers/globals.dart' show GlobalKeyRing, appLanguage, isDarkMode;
import 'widgets/bubble/bubble_carousel.dart';
import 'widgets/appbar/site_header.dart';
import 'widgets/toolbar/toolbar.dart';

void main() {
  runApp(CardAndTabApp());
  SemanticsBinding.instance.ensureSemantics();
}

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
    setState(() {});

    // Trigger bubble redraw to fix its position
    Future.delayed(const Duration(milliseconds: 150), () {
      globalStreams.triggerBubbleCarousel(null);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Semantics.fromProperties(
        properties: SemanticsProperties(enabled: true, focusable: false),
        child: MaterialApp(
            //showSemanticsDebugger: true,
            debugShowCheckedModeBanner: false,
            title:
                "${AppStrings.APP_TITLE} ${AppStrings.APP_SUBTITLE[appLanguage.value]}",
            home: SizedBox.expand(
                child: Stack(children: [
              ExcludeSemantics(
                  excluding: true,
                  child: SizedBox.expand(
                      child: Image.asset("lib/assets/wooden_floor.png",
                          height: 450,
                          cacheHeight: 450,
                          fit: isPortrait ? BoxFit.none : BoxFit.fitWidth,
                          repeat: ImageRepeat.repeat,
                          alignment: Alignment.center
                          // Cover = léger resize, mais sûrement du aux marges
                          // Contain, fitHeight, fitWidth = resize mais ratio intact
                          // fill = resize sans conservation du ratio
                          ))),
              BubbleCarousel(
                key: GlobalKeyRing.bubbleCarousel,
              ),
              SiteHeader(),
              Toolbar(),
            ]))));
  }
}
