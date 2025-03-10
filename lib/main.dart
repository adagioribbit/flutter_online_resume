import 'package:dossier_de_competences_web/helpers/constants.dart'
    show AppStrings;
import 'package:flutter/material.dart';

import 'helpers/globals.dart' show GlobalKeyRing;
import 'widgets/bubble/bubble_carousel.dart';
import 'widgets/appbar/site_header.dart';
import 'widgets/toolbar/toolbar.dart';

void main() => runApp(const CardAndTabApp());

class CardAndTabApp extends StatelessWidget {
  const CardAndTabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.APP_TITLE,
        home: SizedBox.expand(
            child: Stack(children: [
          BubbleCarousel(
            key: GlobalKeyRing.bubbleCarousel,
          ),
          SiteHeader(),
          Toolbar(),
        ])));
  }
}
