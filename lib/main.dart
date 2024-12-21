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

    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                constraints: BoxConstraints(
                  minHeight: 500,
                  minWidth: 50,
                ),
                margin: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.0),
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
                margin: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
              ),
            ]
          ),
        ],
      )
    );
  }
}