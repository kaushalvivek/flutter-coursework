import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Finance App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text("Chart"),
                  elevation: 5,
                ),
              ),
              UserTransactions(),
            ],
          ),
        ),
      ),
    );
  }
}
