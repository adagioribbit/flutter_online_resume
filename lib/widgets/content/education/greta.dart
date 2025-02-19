import 'package:flutter/material.dart';

SizedBox content_greta = SizedBox.expand(
    child: Container(
        margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(76, 87, 112, 190),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(-2, -2),
              ),
              BoxShadow(
                color: Color.fromARGB(76, 87, 112, 190),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border: Border.all(
                color: Color.fromARGB(94, 87, 112, 190), width: 0.5)),
        child: ListView(padding: EdgeInsets.all(50.0), children: [
          Image(height: 100.0, image: AssetImage("lib/assets/greta_94.png"))
        ])));
