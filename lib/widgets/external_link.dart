import 'dart:math' show min;

import 'package:dossier_de_competences_web/helpers/constants.dart';
import 'package:dossier_de_competences_web/helpers/globals.dart' as globals;
import 'package:dossier_de_competences_web/helpers/globals.dart'
    show GlobalKeyRing;
import 'package:flutter/material.dart';
import 'package:web/web.dart' as html;

class ExternalLink extends StatefulWidget implements PreferredSizeWidget {
  final String assetImagePath, url;
  final Color? hoverColor;
  final String? tooltip;
  final BoxConstraints? constraints;

  const ExternalLink(
      {super.key,
      required this.assetImagePath,
      required this.url,
      this.hoverColor,
      this.tooltip,
      this.constraints});

  @override
  Size get preferredSize => Size.fromHeight(Constants.TOOLBAR_HEIGHT);

  Size getPreferredSize() => preferredSize;

  @override
  State<ExternalLink> createState() => _ExternalLinkState();
}

class _ExternalLinkState extends State<ExternalLink>
    with TickerProviderStateMixin {
  late double imageHeight;

  @override
  void initState() {
    super.initState();

    RenderBox parent = (GlobalKeyRing.bubbleCarousel.currentContext!
        .findRenderObject() as RenderBox);
    imageHeight = min(parent.size.width, parent.size.height) * 0.15;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    RenderBox parent = (GlobalKeyRing.bubbleCarousel.currentContext!
        .findRenderObject() as RenderBox);
    imageHeight = min(parent.size.width, parent.size.height) * 0.1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ExternalLink that = widget;

    return ValueListenableBuilder(
        valueListenable: globals.appLanguage,
        builder: (context, value, widget) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                  constraints: that.constraints ??
                      BoxConstraints(
                          minHeight: imageHeight,
                          maxHeight: imageHeight,
                          minWidth: imageHeight,
                          maxWidth: imageHeight),
                  child: IconButton(
                    padding: EdgeInsets.all(imageHeight * 0.175),
                    hoverColor: that.hoverColor,
                    icon: Image(
                        image: AssetImage(that.assetImagePath),
                        fit: BoxFit.contain),
                    tooltip: that.tooltip,
                    onPressed: () {
                      if (that.url.isNotEmpty) {
                        html.window.open(that.url, '_blank');
                      }
                    },
                  ));
            },
          );
        });
  }
}
