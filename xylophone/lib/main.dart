import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int trackNumber) {
    final palyer = AudioCache();
    palyer.play('note$trackNumber.wav');
  }

  Expanded _colorBuider({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            _playSound(sound);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _colorBuider(color: Colors.red, sound: 1),
              _colorBuider(color: Colors.yellow, sound: 2),
              _colorBuider(color: Colors.blue, sound: 3),
              _colorBuider(color: Colors.deepOrange, sound: 4),
              _colorBuider(color: Colors.pink, sound: 5),
              _colorBuider(color: Colors.deepPurple, sound: 6),
              _colorBuider(color: Colors.green, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
