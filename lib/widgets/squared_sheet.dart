import 'package:flutter/material.dart';

class SquaredSheet extends StatefulWidget {
  final dynamic child;
  final double scaleFactor;

  const SquaredSheet({this.child, this.scaleFactor = 5.0, super.key});

  @override
  State<SquaredSheet> createState() => _SquaredSheetState();
}

class _SquaredSheetState extends State<SquaredSheet>
    with WidgetsBindingObserver, TickerProviderStateMixin {
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
    return SizedBox.expand(
        child: OverflowBox(
            minWidth: 21.0 * widget.scaleFactor,
            minHeight: 29.7 * widget.scaleFactor,
            maxWidth: 21.0 * widget.scaleFactor,
            maxHeight: 29.7 * widget.scaleFactor,
            child: Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                minWidth: 21.0 * widget.scaleFactor,
                minHeight: 29.7 * widget.scaleFactor,
                maxWidth: 21.0 * widget.scaleFactor,
                maxHeight: 29.7 * widget.scaleFactor,
              ),
              decoration: BoxDecoration(
                //border: Border.all(),
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(39, 0, 0, 0),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: Offset(10, 25),
                  ),
                ],
              ),
              child: Stack(children: [
                Image(
                    image: AssetImage("lib/assets/blank_squared_sheet.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topLeft
                    // Cover = léger resize, mais sûrement du aux marges
                    // Contain, fitHeight, fitWidth = resize mais ratio intact
                    // fill = resize sans conservation du ratio
                    ),
                widget.child
              ]),
            )));
  }
}
