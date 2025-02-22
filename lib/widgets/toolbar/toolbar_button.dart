import 'package:flutter/material.dart';
import '../../helpers/colorchart.dart';
import '../../helpers/constants.dart';
import '../../helpers/global_streams.dart' show globalStreams;
import '../../helpers/globals.dart' show GlobalKeyRing;

class ToolbarButton extends StatefulWidget {
  final ToolbarButtonPalette palette;
  final String idString, imageAssetPath;
  final String? tooltip;

  const ToolbarButton(
      {required this.idString,
      this.tooltip,
      required this.imageAssetPath,
      required this.palette,
      super.key});

  @override
  State<ToolbarButton> createState() => _ToolbarButtonState();
}

class _ToolbarButtonState extends State<ToolbarButton> {
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
    String idString = widget.idString, imageAssetPath = widget.imageAssetPath;
    ToolbarButtonPalette palette = widget.palette;

    return Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-0.035, -0.035),
              colors: [
                Colors.white,
                palette.radientStop1,
                palette.radientStop2,
                palette.radientStop3,
              ],
              stops: [0.7, 0.95, 0.99, 1],
            ),
            border: Border.all(color: palette.border, width: 3.0),
            borderRadius: const BorderRadius.all(
                Radius.circular(Constants.TOOLBAR_HEIGHT / 2.0)),
            boxShadow: [
              BoxShadow(
                color: ColorChart.toolbarBoxShadow,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(-2, 5),
              ),
              BoxShadow(
                color: ColorChart.toolbarBoxShadow,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(2, 5),
              ),
            ]),
        child: IconButton(
          focusColor: palette.iconFocus,
          hoverColor: palette.iconHover,
          highlightColor: palette.iconHighlight,
          constraints: BoxConstraints(
            minHeight: Constants.TOOLBAR_HEIGHT * 0.8,
            maxHeight: Constants.TOOLBAR_HEIGHT * 0.8,
            minWidth: Constants.TOOLBAR_HEIGHT * 0.8,
            maxWidth: Constants.TOOLBAR_HEIGHT * 0.8,
          ),
          icon: Image(
              key: GlobalKeyRing.key[idString],
              color: palette.icon,
              image: AssetImage(imageAssetPath)),
          tooltip: widget.tooltip,
          onPressed: () {
            globalStreams.triggerBubbleCarousel(idString);
          },
        ));
  }
}
