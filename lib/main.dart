// OpeningFolder
// 
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const CardAndTabApp());

class CardAndTabApp extends StatelessWidget {
  const CardAndTabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test",
      color: Colors.amber,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dossier de compétences'),
          centerTitle: true,
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

class _CardAndTabState extends State<CardAndTab> with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  AnimationStatus _status = AnimationStatus.dismissed;
  late Size _lastSize;
  
  Color manilla = Color(0xffceb88f);
  Color stickerLabel = Color.fromARGB(255, 241, 242, 232);
  Color background = Color(0xfffef7ff);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween(end: 0.7, begin: 0.01).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubicEmphasized
      ))
      ..addListener(() {
        setState(() {

        });
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // [View.of] exposes the view from `WidgetsBinding.instance.platformDispatcher.views`
    // into which this widget is drawn.
    _lastSize = View.of(context).physicalSize;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    setState(() { _lastSize = View.of(context).physicalSize; });
    print('changed size $_lastSize');
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double screenWidth = MediaQuery.sizeOf(context).width;

    return
    Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /* Conteneur extérieur */
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Conteneur de l'onglet */
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                /* Onglet du dossier */
                Container(
                  width: 150,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: manilla,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
                  ),
                  constraints: BoxConstraints(
                    minHeight: 45,
                    minWidth: 50,
                  ),
                  margin: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /* Etiquette dossier */
                      Container(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                          color: stickerLabel,
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        child:Text("Formation",style:TextStyle(fontWeight: FontWeight.bold))
                      )
                    ]
                  ),
                ),
                /* Courbure de raccord de l'onglet au dossier */
                Container(
                  width: 15,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      stops: [0, 0.2, 0.2, 1],
                      colors: [
                        background,
                        background,
                        manilla,
                        manilla,
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
                GestureDetector(
                  onTap: () {
                    if (_status == AnimationStatus.dismissed) {
                      _controller.forward();
                    } else {
                      _controller.reverse();
                    }
                  },
                  child:
            Stack(
              children:[
                /* Dos du dossier */
                Container(
                  decoration: BoxDecoration(
                    color: manilla,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4.0), bottomRight: Radius.circular(4.0), topRight: Radius.circular(4.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0,
                        blurRadius: 15,
                        offset: Offset(5, 12),
                      ),
                    ],
                  ),
                  constraints: BoxConstraints(
                    minHeight: 450,
                    minWidth: 250,
                    maxWidth: 650,
                  ),
                  margin: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 50),
                ),
                Transform(
                  alignment: FractionalOffset.center,
                  origin: Offset(0,200),
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.0005)
                    ..rotateX(pi * _animation.value),
                  child: 
                    /* Rabat du dossier */
                    Container(
                      decoration: BoxDecoration(
                        color: manilla,
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(98, 75, 75, 75),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, -2),
                          ),
                        ],
                      ),
                      constraints: BoxConstraints(
                        minHeight: 440,
                        minWidth: 250,
                        maxWidth: 650,
                      ),
                      margin: EdgeInsetsDirectional.fromSTEB(50, 10, 50, 50),
                    ),
                )
              ])
            )]
        )]
    );
  }
}

//void main() {
//  runApp(const MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      // Remove the debug banner
//        debugShowCheckedModeBanner: false,
//
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: const HomePage());
//  }
//}
//
//class HomePage extends StatefulWidget {
//  const HomePage({Key? key}) : super(key: key);
//
//  @override
//  State<HomePage> createState() => _HomePageState();
//}
//
//// don't forget "with SingleTickerProviderStateMixin"
//class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//
//  late AnimationController _controller;
//  late Animation _animation;
//  AnimationStatus _status = AnimationStatus.dismissed;
//
//  @override
//  void initState() {
//    super.initState();
//    _controller =
//        AnimationController(vsync: this, duration: const Duration(seconds: 1));
//    _animation = Tween(end: 1.0, begin: 0.0).animate(_controller)
//      ..addListener(() {
//        setState(() {
//
//        });
//      })
//      ..addStatusListener((status) {
//        _status = status;
//      });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text('dbestech'),
//      ),
//      body: Center(
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: [
//            const SizedBox(
//              height: 30,
//            ),
//            Transform(
//              alignment: FractionalOffset.center,
//              origin: Offset(0,150),
//              transform: Matrix4.identity()
//                ..setEntry(3, 2, 0.0015)
//                ..rotateX(pi * _animation.value),
//              child: Card(
//                child: _animation.value <= 0.5
//                    ? Container(
//                    color: Colors.blue,
//                    width: 240,
//                    height: 300,
//                    child: const Center(
//                        child: Text(
//                          '?',
//                          style: TextStyle(fontSize: 100, color: Colors.white),
//                        )))
//                    : Container(
//                    width: 240,
//                    height: 300,
//                    color: Colors.grey,
//                    child: Image.network(
//                      'https://www.dbestech.com/img/mobile.png',
//                      fit: BoxFit.cover,
//                    )),
//              ),
//            ),
//            // Vertical Flipping
//            const SizedBox(
//              height: 30,
//            ),
//            ElevatedButton(
//                onPressed: () {
//                  if (_status == AnimationStatus.dismissed) {
//                    _controller.forward();
//                  } else {
//                    _controller.reverse();
//                  }
//                },
//                child: const Text('See inside'))
//          ],
//        ),
//      ),
//    );
//  }
//}