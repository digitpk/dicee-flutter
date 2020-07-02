import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldf = 1;
  int rdf = 6;

  void rollingDice() {
    ldf = Random().nextInt(6) + 1; //Random function
    rdf = Random().nextInt(6) + 1; //Random function
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollingDice();
                });
              },
              child: Image.asset('images/dice$ldf.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollingDice();
                });
              },
              child: Image.asset('images/dice$rdf.png'),
            ),
          ),
        ],
      ),
    );
  }
}
