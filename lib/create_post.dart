import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  String _post;
  bool _ispush, _issports, _isinfo, _isclub, _isimportant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 45.0, 0.0),
              child: Text("Sports", style: TextStyle(fontSize: 32.0))),
        )),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Enter Post"),
              onChanged: (value) {
                _post = value;
              },
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (value) {
                    _ispush = value;
                  },
                ),
                Text("Send a push notification to all devices")
              ],
            ),
            Divider(),
            Text("Categories"),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (value) {
                    _issports = value;
                  },
                ),
                Text("Sports")
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (value) {
                    _isinfo = value;
                  },
                ),
                Text("Information")
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (value) {
                    _isclub = value;
                  },
                ),
                Text("Clubs")
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (value) {
                    _isimportant = value;
                  },
                ),
                Text("Important")
              ],
            ),
          ],
        ));
  }
}
