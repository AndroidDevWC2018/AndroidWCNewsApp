import 'package:flutter/material.dart';

import './news_cards.dart';

class ImportantInfo extends StatelessWidget {
  List<String> name = ["Travis Mayfield"];
  List<String> description = ["Executive Principal"];
  List<String> information = [
    "Welcome to the news Wilson Central High School News, Sports, and Information App"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 45.0, 0.0),
              child: Text("Important Information",
                  style: TextStyle(fontSize: 32.0))),
        )),
        body: Cards(name, description, information));
  }
}
