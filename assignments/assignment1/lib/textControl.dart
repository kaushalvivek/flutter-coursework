import 'package:flutter/material.dart';

import './text.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  var _textDisplayed = "this is the default text";

  void _changeText() {
    setState(() {
      _textDisplayed = "this is the new text";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is the appbar"),
        ),
        body: Column(
          children: <Widget>[
            TextDisplayed(_textDisplayed),
            RaisedButton(
              child: Text("Press to Change"),
              onPressed: _changeText,
            ),
          ],
        ),
      ),
    );
  }
}
