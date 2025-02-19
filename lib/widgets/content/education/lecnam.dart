import 'package:flutter/material.dart';

SizedBox content_lecnam = SizedBox.expand(
    child: Container(
        margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(76, 194, 0, 43),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(-2, -2),
              ),
              BoxShadow(
                color: Color.fromARGB(76, 194, 0, 43),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border: Border.all(
                color: const Color.fromARGB(94, 194, 0, 43), width: 0.5)),
        child: ListView(padding: EdgeInsets.all(50.0), children: [
          Image(
              height: 100.0, image: AssetImage("lib/assets/le_cnam_paris.png"))
        ])));
