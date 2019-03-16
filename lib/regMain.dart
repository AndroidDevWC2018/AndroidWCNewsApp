import 'package:flutter/material.dart';

import './news_manager.dart';
import './quick_link.dart';
import './drawer.dart';

void main() => runApp(NotLoggedIn());

class NotLoggedIn extends StatelessWidget {

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
      drawer: DrawerBuild(false, null, null),
      
    )
    );
  }
}
