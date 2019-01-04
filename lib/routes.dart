import 'package:flutter/material.dart';

class RoutesList extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return <String, WidgetBuilder>{
      "IInfo": (BuildContext context) => ImportantInfo(),
    };
    }
}