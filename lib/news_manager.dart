import 'package:flutter/material.dart';

import './news_cards.dart';
import './quick_link.dart';

class ShowNews extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ShowNews();
  }
}

class _ShowNews extends State<ShowNews> {
  List<String> name = ["Travis Mayfield"];
  List<String> description = ["Executive Principal"];
  List<String> information = [
    "Welcome to the news Wilson Central High School News, Sports, and Information App"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200], child: Cards(name, description, information));
  }
}
