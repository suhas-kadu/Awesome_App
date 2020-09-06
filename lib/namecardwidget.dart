import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.myText,
    @required TextEditingController namecontroller,
  }) : _namecontroller = namecontroller, super(key: key);

  final String myText;
  final TextEditingController _namecontroller;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    ),
    );
  }
}
