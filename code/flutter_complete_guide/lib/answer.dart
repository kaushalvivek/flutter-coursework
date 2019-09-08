import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String text;

  Answer(this.handler, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: handler,
      ),
    );
  }
}
