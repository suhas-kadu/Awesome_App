import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}