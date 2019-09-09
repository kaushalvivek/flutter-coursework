import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    return "Your score is :" + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            textColor: Colors.blue,
            onPressed: reset,
            child: Text(
              "Restart Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
