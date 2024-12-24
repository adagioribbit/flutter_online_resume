import 'package:dossier_de_competences_web/widgets/manila_folder.dart';
import 'package:dossier_de_competences_web/widgets/squared_sheet.dart';
import 'package:flutter/material.dart';
import 'dart:math' show pi;

final Color background = Color.fromARGB(255, 249, 247, 255);

void main() => runApp(const CardAndTabApp());

class CardAndTabApp extends StatelessWidget {
  const CardAndTabApp({super.key});
  final String squared_paper_text = '''tralala
lalalalal
Et puis merdre !
Pourquoi s\'prendre la tetê ?!
La vie est trop courte !
Allez, je fais du multiligne pour peindre cette page blanche de daube !''';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test",
      color: Colors.amber,
      home: Scaffold(
          backgroundColor: background,
          //backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Text('Dossier de compétences'),
            centerTitle: true,
          ),
          body: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Transform(
                //  alignment: FractionalOffset.center,
                //  origin: Offset(0, 50),
                //  transform: Matrix4.identity()
                //    ..setEntry(3, 2, 0.0005)
                //    ..rotateX(pi * -0.2)
                //    ..rotateY(pi * -0.05)
                //    ..rotateZ(pi * -0.05),
                //  child: const ManilaFolder(
                //      stickerLabelText: "Formation",
                //      stickerRotationAngle: -(pi / 60),
                //      stickerFontSize: 20.0,
                //      folderMainColor: Colors.teal,
                //      hasFrontCoverMarkup: true,
                //      frontCoverMarkupTextStyle: TextStyle(
                //        fontSize: 100.0,
                //        fontFamily: "Sabenya",
                //        color: Colors.black,
                //      )),
                //),
                SquaredSheet(
                    scaleFactor: 25.0,
                    child: Text(squared_paper_text,
                        style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: "Handwritten",
                            color: Colors.green)))
              ])),
    );
  }
}
