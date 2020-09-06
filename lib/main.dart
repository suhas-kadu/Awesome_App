//import 'dart:html';

//import 'dart:html';

import 'package:awesome_app/drawer.dart';
import 'package:awesome_app/namecardwidget.dart';
import 'package:awesome_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  //WidgetsApp
  //MaterialApp
  //CupertinoApp

  //runApp(MaterialApp());
  //runApp(CupertinoApp());
  //runApp(WidgetsApp());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  );
  }
}

