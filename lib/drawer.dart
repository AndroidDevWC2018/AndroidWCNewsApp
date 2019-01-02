import 'package:flutter/material.dart';


class DrawerBuild extends StatelessWidget{
  bool isLoggedIn = false;
  @override
    Widget build(BuildContext context) {
      // TODO: Add Navigation
      return Drawer(
        child: ListView(
          children: <Widget>[
            isLoggedIn == true ? UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("admin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("A"),
              ),
            ) : Container(),
            Divider(),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () => Navigator.of(context).pop()
            ),
            Divider(),
            ListTile(
              title: Text("Importsnt Info"),
              trailing: Icon(Icons.notification_important),
            ),
            ListTile(
              title: Text("Sports"),
              trailing: Icon(Icons.directions_bike),
            ),
            ListTile(
              title: Text("Information"),
              trailing: Icon(Icons.info),
            ),
            ListTile(
              title: Text("Clubs"),
              trailing: Icon(Icons.group),
            ),
            Divider(),
            ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
            ),
            isLoggedIn == true ? ListTile(
              title: Text("Log Out"),
              trailing: Icon(Icons.arrow_right),
            ) : Container()
          ],
        ),
      );
    }
}