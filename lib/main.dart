import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: new AppBar(
        title: Text("Flutter Dice Game"),
        backgroundColor: Colors.purple,
      ),
      body: new DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          //Image.asset("dice1.png"),
          Expanded(
            flex: 1,
            child: FlatButton(
              //int x;
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6);
                });
                //leftDiceNumber = Random().nextInt(6);
              },
              child: Image.asset(
                'dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              //int x;
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6);
                });
              },
              child: Image.asset(
                'dice$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
