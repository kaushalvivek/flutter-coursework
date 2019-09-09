import 'package:flutter/material.dart';

class TextDisplayed extends StatelessWidget {
  final text;

  TextDisplayed(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
