import 'package:flutter/material.dart';
import '../lib/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//  var myText = "Change my Name";
//  TextEditingController _namecontroller = new TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    //myText = "Change my Name";
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    //print(res.body);
    data = jsonDecode(res.body);
    setState(() {
      print(data);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["thumbnailUrl"]),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),

      drawer: MyDrawer(),
      //FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //myText = _namecontroller.text;
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
