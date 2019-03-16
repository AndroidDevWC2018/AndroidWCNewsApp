import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './news_cards.dart';
import './quick_link.dart';

class ShowNews extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ShowNews();
    
  }
}

class _ShowNews extends State<ShowNews> {
  List<String> name = [""];
  List<String> description = [""];
  List<String> information = [""];


  @override
  Widget build(BuildContext context) {
    
    

    return Container(
        color: Colors.grey[200], child: Cards(name, description, information));
  }
}
