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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change my Name";
  TextEditingController _namecontroller = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myText = "Change my Name";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome App'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Card(
              child: Column(
            children: <Widget>[
              Image.asset(
                "assets/img.png",
                //width: 200,
                //height: 200,
                //fit: BoxFit.contain,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                myText,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _namecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name",
                    labelText: "Name",
                  ),
                ),
              ),
            ],
          )),
        ),
      )),

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
              onTap: () {},
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
        onPressed: () {
          myText = _namecontroller.text;
          setState(() {});
        },
        child: Icon(Icons.send),
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
