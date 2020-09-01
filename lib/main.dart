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
          margin: EdgeInsets.all(20),
          height: 300,
          width: 400,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //spaceAround,//spaceBetween,//center,//end,//start
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Container(
            color: Colors.red,
            padding: const EdgeInsets.all(20),
            height: 100,
            width: 100,
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
          
           Container(
            color: Colors.green,
            padding: const EdgeInsets.all(20),
            height: 100,
            width: 100,
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

           Container(
            color: Colors.yellow,
            padding: const EdgeInsets.all(20),
            height: 100,
            width: 100,
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


            ],

          



          ),
        ),
      ),
    );
  }
}
