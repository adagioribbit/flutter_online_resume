import 'package:flutter/material.dart';
import 'helpers/colorchart.dart';
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
      title: "Test",
      color: Colors.amber,
      theme: ThemeData(),
      home: Scaffold(
          extendBody: true,
          backgroundColor: ColorChart.appBackground,
          appBar: SiteHeader(),
          body: Stack(children: [
            //Zoombee(
            //  radius: 50,
            //),
            //ValueListenableBuilder(
            //    valueListenable: globals.appLanguage,
            //    builder: (context, language, widget) {
            //      return ManilaFolder(
            //          stickerLabelText:
            //              AppStrings.MANILLAFOLDER_TITLE[language]!,
            //          stickerRotationAngle: -(pi / 60),
            //          stickerFontSize: 20.0,
            //          folderMainColor: Colors.teal,
            //          hasFrontCoverMarkup: true,
            //          frontCoverMarkupTextStyle: TextStyle(
            //            fontSize: 100.0,
            //            fontFamily: "Sabenya",
            //            color: Colors.black,
            //          ),
            //          frontCoverMarkupTiltAngle: -0.085);
            //    }),
            BubbleCarousel(),
            Toolbar()
          ])),
    );
  }
}
