import 'package:flutter/material.dart';

import './main_anonymous.dart';
import './main_loggedin.dart';

void main() => runApp(StartNews());

class StartNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Image.asset(
              'assets/WCLogo.png',
              width: double.infinity/0.75,
            ),
            OutlineButton(
              onPressed: ()=>Navigator.of(context).pushReplacementNamed("LoggedIn"),
              child: Container(
                child: Text("Staff"),
                width: double.infinity,
              ),
              splashColor: Colors.blueAccent,
              borderSide: BorderSide(color: Colors.blue),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              
            ),
            OutlineButton(
              onPressed: ()=>Navigator.of(context).pushReplacementNamed("Anonymous"),
              child: Container(
                child: Text("Student"),
                width: double.infinity,
              ),
              splashColor: Colors.blueAccent,
              borderSide: BorderSide(color: Colors.blue),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            )
          ],
        ),
      ),
      routes: <String, WidgetBuilder>{
        "LoggedIn": (BuildContext context) => LoggedIn(),
        "Anonymous": (BuildContext context) => NotLoggedIn()
      },
    );
  }
}
