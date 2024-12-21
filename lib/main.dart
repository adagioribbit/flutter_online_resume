import 'package:flutter/material.dart';

/// Flutter code sample for [CarouselView].

void main() => runApp(const CardAndTabApp());

class CardAndTabApp extends StatelessWidget {
  const CardAndTabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.cast),
          title: const Text('Flutter TV'),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.only(end: 16.0),
              child: CircleAvatar(child: Icon(Icons.account_circle)),
            ),
          ],
        ),
        body: const CardAndTab(),
      ),
    );
  }
}

class CardAndTab extends StatefulWidget {
  const CardAndTab({super.key});

  @override
  State<CardAndTab> createState() => _CardAndTabState();
}

class _CardAndTabState extends State<CardAndTab> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double screenWidth = MediaQuery.sizeOf(context).width;

    return
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 150,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xffceb88f),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
              ),
              constraints: BoxConstraints(
                minHeight: 45,
                minWidth: 50,
              ),
              margin: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
            ),
            Container(
              width: 15,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  stops: [0, 0.2, 0.2, 1],
                  colors: [
                    const Color.fromRGBO(254, 247, 255, 1),
                    const Color.fromRGBO(254, 247, 255, 1),
                    Color(0xffceb88f),
                    Color(0xffceb88f),
                  ],
                  center: Alignment.topRight,
                  radius: 5,
                ),
              ),
              constraints: BoxConstraints(
                minHeight: 15,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Color(0xffceb88f),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0), topRight: Radius.circular(12.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 15,
                offset: Offset(5, 12), // changes position of shadow
              ),
            ],
          ),
          constraints: BoxConstraints(
            minHeight: 450,
            minWidth: 250,
          ),
          margin: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 50),
        ),
      ]
    );
  }
}