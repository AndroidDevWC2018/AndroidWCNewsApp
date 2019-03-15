import 'package:flutter/material.dart';

import './news_manager.dart';
import './quick_link.dart';
import './drawer.dart';
import './important_info.dart';
import './sports.dart';
import './settings.dart';
import './information.dart';
import './clubs.dart';
import './create_post.dart';

class LoggedIn extends StatelessWidget {
  bool isLoggedIn = true;
  final String name = "Administrator";
  final String email = "admin@gmail.com";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
              child: Text("Wilson", style: TextStyle(fontSize: 32.0))),
          Image.asset('assets/WCLogo.png', width: 45.0),
          Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 50.0, 0.0),
              child: Text("Central", style: TextStyle(fontSize: 32.0))),
        ]),
      ),
      body: Column(
        children: <Widget>[
          QuickLinks(),
          Expanded(
            child: ShowNews(),
          )
        ],
      ),
      drawer: DrawerBuild(isLoggedIn, name, email),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.of(context).pushNamed("CreatePost"),
        child: Icon(Icons.add),
      ),
    ),
    routes: <String, WidgetBuilder>{
      "IInfo": (BuildContext context) => ImportantInfo(),
      "Sports": (BuildContext context) => Sports(),
      "Information": (BuildContext context) => Information(),
      "Clubs": (BuildContext context) => Clubs(),
      "Settings": (BuildContext context) => Settings(),
      "CreatePost": (BuildContext context) => CreatePost()
    },
    );
  }
}
