import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void _changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: _changeDiceNumber,
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: _changeDiceNumber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
