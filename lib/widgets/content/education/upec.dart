import 'package:flutter/material.dart';

SizedBox content_upec = SizedBox.expand(
    child: Container(
        margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(75, 231, 34, 48),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(-2, -2),
              ),
              BoxShadow(
                color: Color.fromARGB(75, 231, 34, 48),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            border: Border.all(
                color: const Color.fromARGB(94, 231, 34, 48), width: 0.5)),
        child: ListView(padding: EdgeInsets.all(50.0), children: [
          Image(height: 100.0, image: AssetImage("lib/assets/upec.png"))
        ])));
