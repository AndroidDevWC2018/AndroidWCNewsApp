import 'package:flutter/material.dart';

class QuickLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: Work on cleaning up the logos, was thinking of using the icons class with round buttons
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      padding: EdgeInsets.all(3.0),
      height: 75.0,
      color: Colors.grey[200],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(children: <Widget>[
            FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              onPressed: () {},
              child: Image.asset("assets/IconSports.png", width: 60.0),
            ),
          ]),
          Column(children: <Widget>[
            FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              onPressed: () {},
              child: Image.asset("assets/IconSports.png", width: 60.0),
            ),
          ]),
          Column(children: <Widget>[
            FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              onPressed: () {},
              child: Image.asset("assets/IconSports.png", width: 60.0),
            ),
          ]),
          Column(children: <Widget>[
            FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              onPressed: () {},
              child: Image.asset("assets/IconSports.png", width: 60.0),
            ),
          ]),
          Column(children: <Widget>[
            FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              onPressed: () {},
              child: Image.asset("assets/IconSports.png", width: 60.0),
            ),
          ]),
          Column(children: <Widget>[
            FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              onPressed: () {},
              child: Image.asset("assets/IconSports.png", width: 60.0),
            ),
          ]),
          Column(children: <Widget>[
            FlatButton(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              onPressed: () {},
              child: Image.asset("assets/IconSports.png", width: 60.0),
            ),
          ]),
        ],
      ),
    );
  }
}
