import 'package:flutter/material.dart';

import './important_info.dart';
import './sports.dart';
import './information.dart';
import './clubs.dart';
import './settings.dart';

class QuickLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: Work on cleaning up the logos, was thinking of using the icons class with round buttons
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      padding: EdgeInsets.all(3.0),
      height: 45.0,
      color: Colors.grey[200],
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
            child: OutlineButton(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              splashColor: Colors.blueAccent,
              borderSide: BorderSide(color: Colors.blue),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ImportantInfo())),
              child: Row(children: <Widget>[
                Icon(
                  Icons.notification_important,
                  size: 28.0,
                ),
                Text("Important Info")
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            child: OutlineButton(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              splashColor: Colors.blueAccent,
              borderSide: BorderSide(color: Colors.blue),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Sports())),
              child: Row(children: <Widget>[
                Icon(
                  Icons.directions_bike,
                  size: 28.0,
                ),
                Text("  Sports")
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            child: OutlineButton(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              splashColor: Colors.blueAccent,
              borderSide: BorderSide(color: Colors.blue),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Information())),
              child: Row(children: <Widget>[
                Icon(
                  Icons.info,
                  size: 28.0,
                ),
                Text(" Information")
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
            child: OutlineButton(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
              splashColor: Colors.blueAccent,
              borderSide: BorderSide(color: Colors.blue),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Clubs())),
              child: Row(children: <Widget>[
                Icon(
                  Icons.group,
                  size: 28.0,
                ),
                Text(" Clubs")
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
