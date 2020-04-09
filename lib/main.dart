import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: new AppBar(
            title: Center(
              child: Text(
                "Flutter Dice Game",
                style: TextStyle(
                  fontSize: 40,
                  // backgroundColor: Colors.orange,
                ),
              ),
            ),
            backgroundColor: Colors.purple,
          ),
          body: new DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rohan() {
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
  }

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
                  rohan();
                });

                //leftDiceNumber = Random().nextInt(6);
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              //int x;
              onPressed: () {
                setState(() {
                  rohan();
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void rohan() {}
