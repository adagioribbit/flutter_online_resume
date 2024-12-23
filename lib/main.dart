import 'package:dossier_de_competences_web/manila_folder.dart';
import 'package:flutter/material.dart';

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
        body: const ManilaFolder(),
      ),
    );
  }
}
