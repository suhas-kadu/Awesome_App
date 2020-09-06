//import 'dart:html';

//import 'dart:html';

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
          color: Colors.red,
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: Text(
            "I'm a Container",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Brie Larson"),
              accountEmail: Text("brielarson73@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Brie Larson"),
              subtitle: Text("Actor"),
              trailing: Icon(Icons.edit),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("brielarson73@gmail.com"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            )
          ],
        ),
      ),

      //FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        elevation: 5,
        //mini: true,
        backgroundColor: Colors.green,
        hoverColor: Colors.red,
        hoverElevation: 5,
      ),

    
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
