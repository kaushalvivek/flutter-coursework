import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = <String>[
      'What\'s your favourite colour?',
      'What\'s your favour animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is the Title'),
        ),
        body: Column(
          children: <Widget>[
            Text('The question!'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
