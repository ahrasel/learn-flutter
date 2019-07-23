import 'package:flutter/material.dart';
import './pages/dice_page.dart';
import './pages/magic_ball.dart';
void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   title: Text('Dices'),
      // ),
      // body: DicePage(),
      body: MagicBall(),
    ),
  ));
}
