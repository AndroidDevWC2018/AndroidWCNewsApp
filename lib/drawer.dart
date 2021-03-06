import 'package:flutter/material.dart';

import './important_info.dart';
import './sports.dart';
import './information.dart';
import './clubs.dart';
import './settings.dart';

class DrawerBuild extends StatelessWidget{
  bool _isLoggedIn = false;
  String _name, _email;

  DrawerBuild(this._isLoggedIn, this._name, this._email);

  @override
    Widget build(BuildContext context) {
      // TODO: Add Navigation
      return Drawer(
        child: ListView(
          children: <Widget>[
            _isLoggedIn == true ? UserAccountsDrawerHeader(
              accountName: Text(_name),
              accountEmail: Text(_email),
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
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ImportantInfo())),
            ),
            ListTile(
              title: Text("Sports"),
              trailing: Icon(Icons.directions_bike),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Sports())),
            ),
            ListTile(
              title: Text("Information"),
              trailing: Icon(Icons.info),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Information())),
            ),
            ListTile(
              title: Text("Clubs"),
              trailing: Icon(Icons.group),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Clubs())),
            ),
            Divider(),
            ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Settings())),
            ),
            _isLoggedIn == true ? ListTile(
              title: Text("Log Out"),
              trailing: Icon(Icons.arrow_right),
            ) : Container()
          ],
        ),
      );
    }
}