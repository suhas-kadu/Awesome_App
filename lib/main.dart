import 'file:///E:/Projects/awesome_app/pages/login_page.dart';
import 'file:///E:/Projects/awesome_app/pages/home_page.dart';
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
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        LoginPage.routeName : (context)=>LoginPage(),
        HomePage.routeName : (context)=>HomePage(),
        
      },
    );
  }
}
