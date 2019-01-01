import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final List<String> _Name;
  final List<String> _Description;
  final List<String> _Information;

  Cards(this._Name, this._Description, this._Information);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: _Name.map((element) => Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 15.0),
                    child: Row(children: <Widget>[
                      Image.asset('assets/IconSportsDark.png', width: 75.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 7.0),
                            child: Text(element,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                            child: Text(_Description[_Name.indexOf(element)],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17.0)),
                          )
                        ],
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 20.0),
                    child: Text(_Information[_Name.indexOf(element)],
                        style: TextStyle(fontSize: 15.0)),
                  ),
                ],
              ),
            ),
          )).toList(),
    ));
  }
}
