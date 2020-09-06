import 'package:flutter/material.dart';
import 'package:awesome_app/drawer.dart';
import 'package:awesome_app/namecardwidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change my Name";
  TextEditingController _namecontroller = new TextEditingController();

  @override
  void initState() {
   
    super.initState();
    myText = "Change my Name";
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
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: NameCardWidget(myText: myText, namecontroller: _namecontroller),
        ),
      ),
      ),

     drawer: MyDrawer(),
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
