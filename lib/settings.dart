import 'package:flutter/material.dart';

import './news_cards.dart';

class Settings extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _Settings();
  }
}

class _Settings extends State<Settings> {
  List<String> name = ["Travis Mayfield"];
  List<String> description = ["Executive Principal"];
  List<String> information = [
    "Welcome to the news Wilson Central High School News, Sports, and Information App"
  ];
  bool Setting1 = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 45.0, 0.0),
              child: Text("Settings", style: TextStyle(fontSize: 32.0))),
        )),
        body: ListView(
          children: <Widget>[
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
            SwitchListTile(
              title: Text("Setting1"),
              value: Setting1,
              onChanged: (bool newVal) {
                setState(() {
                  Setting1 = newVal;
                });
              },
              secondary: const Icon(Icons.settings),
            ),
          ],
        ));
  }
}
