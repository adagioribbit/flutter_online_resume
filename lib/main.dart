import 'package:flutter/material.dart';
import 'dart:math' show pi;
import 'helpers/colorchart.dart';
import 'widgets/squared_sheet.dart';
import 'widgets/site_header.dart';

void main() => runApp(const CardAndTabApp());

class CardAndTabApp extends StatelessWidget {
  const CardAndTabApp({super.key});
  final String squared_paper_text = '''tralala
lalalalal
Et puis merdre !
Pourquoi s\'prendre la tetê ?!
La vie est trop courte !
Allez, je fais du multiligne pour peindre cette page blanche de daube !''';

  static Matrix4 createCylindricalProjectionTransform({
    required double radius,
    required double angle,
    double perspective = 0.001,
    Axis orientation = Axis.vertical,
  }) {
    assert(perspective >= 0 && perspective <= 1.0);

    // Pre-multiplied matrix of a projection matrix and a view matrix.
    //
    // Projection matrix is a simplified perspective matrix
    // http://web.iitd.ac.in/~hegde/cad/lecture/L9_persproj.pdf
    // in the form of
    // [[1.0, 0.0, 0.0, 0.0],
    //  [0.0, 1.0, 0.0, 0.0],
    //  [0.0, 0.0, 1.0, 0.0],
    //  [0.0, 0.0, -perspective, 1.0]]
    //
    // View matrix is a simplified camera view matrix.
    // Basically re-scales to keep object at original size at angle = 0 at
    // any radius in the form of
    // [[1.0, 0.0, 0.0, 0.0],
    //  [0.0, 1.0, 0.0, 0.0],
    //  [0.0, 0.0, 1.0, -radius],
    //  [0.0, 0.0, 0.0, 1.0]]
    Matrix4 result = Matrix4.identity()
      ..setEntry(3, 2, -perspective)
      ..setEntry(2, 3, -radius)
      ..setEntry(3, 3, perspective * radius + 1.0);

    // Model matrix by first translating the object from the origin of the world
    // by radius in the z axis and then rotating against the world.
    result = result *
        (switch (orientation) {
              Axis.horizontal => Matrix4.rotationY(angle),
              Axis.vertical => Matrix4.rotationX(angle),
            } *
            Matrix4.translationValues(0.0, 0.0, radius)) as Matrix4;

    // Essentially perspective * view * model.
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test",
      color: Colors.amber,
      home: Scaffold(
          backgroundColor: ColorChart.appBackground,
          appBar: SiteHeader(),
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
                Transform(
                    alignment: FractionalOffset.center,
                    origin: Offset(0, 221),
                    transform: createCylindricalProjectionTransform(
                        radius: (2 * pi),
                        angle: (pi / 16),
                        perspective: 0.01,
                        orientation: Axis.vertical),
                    child: SquaredSheet(
                        scaleFactor: 25.0,
                        child: Text(squared_paper_text,
                            style: TextStyle(
                                fontSize: 40.0,
                                fontFamily: "Handwritten",
                                color: Colors.green))))
              ])),
    );
  }
}
