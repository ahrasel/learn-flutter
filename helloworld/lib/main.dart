import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text('Ask Me Anything'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blue[300],
          child: Center(
            child: Image(
              image: AssetImage('images/ball1.png'),
            ),
          ),
        ),
      ),
    );
  }
}
