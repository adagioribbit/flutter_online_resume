import 'package:flutter/material.dart';

import '../../../helpers/utils.dart';

bool isNarrowScreen = Utils.isPhoneView() || Utils.isFoldableView();
double marginContainer = isNarrowScreen ? 10.0 : 50.0;
double paddingHorizontalListView = isNarrowScreen ? 10.0 : 50.0;
double paddingVerticalListView = isNarrowScreen ? 10.0 : 25.0;

SizedBox content_lewagon = SizedBox.expand(
    child: Container(
        margin: EdgeInsets.fromLTRB(0, marginContainer, 0, marginContainer),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(76, 255, 0, 0),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(-2, -2),
              ),
              BoxShadow(
                color: Color.fromARGB(76, 255, 0, 0),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border:
                Border.all(color: Color.fromARGB(94, 255, 0, 0), width: 0.5)),
        child: ListView(
            padding: EdgeInsets.fromLTRB(
                paddingHorizontalListView,
                paddingVerticalListView,
                paddingHorizontalListView,
                paddingVerticalListView),
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Image(
                      height: 100.0,
                      image: AssetImage("lib/assets/lewagon.png"))),
              Text("\nJuillet 2024 à Septembre 2024",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
              Text("\nBootcamp Data Science & IA",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(5, 25, 5, 25),
                  child: Text(
                      "Dans la continuité de ma licence, cette formation m'a appris à mettre en œuvre les librairies Python de référence dans le domaine du big data pour la construction de tableaux de bord financiers, d\'algorithmes de recommandations et autres modèles prédictifs utilisés dans la création et l\'entraînement d'intelligences artificielles capables notamment d\'analyser et classifier automatiquement des données textuelles, des images, voire des vidéos.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16, fontFamily: "Courier"))),
              Text("Languages",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(94, 255, 0, 0), width: 0.5),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  child: Text("Python",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16))),
              Text("Librairies",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(94, 255, 0, 0), width: 0.5),
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(5),
                  child: Text(
                      "Pandas, Matplotlib, Seaborn\nKeras, TensorFlow, HuggingFace\nDocker, Google Cloud Platform",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16))),
            ])));
