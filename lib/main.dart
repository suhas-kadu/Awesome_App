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

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome App'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            gradient: LinearGradient(
              colors: [
                Colors.yellowAccent,
                Colors.blueAccent,
              ],
            ),
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(20),
          height: 100,
          width: 100,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          child: Text(
            "I'm a box",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
