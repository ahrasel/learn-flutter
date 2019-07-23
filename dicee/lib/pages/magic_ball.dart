import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int _ansNumber = 3;
  void _getAnswer() {
    setState(() {
      _ansNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FlatButton(
          child: Image.asset('images/ball$_ansNumber.png'),
          onPressed: _getAnswer,
        ),
      ),
    );
  }
}