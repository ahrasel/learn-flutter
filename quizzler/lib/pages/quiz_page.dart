import 'package:flutter/material.dart';
import 'package:quizzler/models/question_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var _questionBank = new QuestionBank();
  List<Icon> _scoreKeeper = [];
  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.info,
      title: "Thank For Playing",
      desc: "Thank For Playing Quizler. Your Question Will Be Reset now",
      buttons: [
        DialogButton(
          child: Text(
            "Colse",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.pop(context);
            setState(() {
              _scoreKeeper = [];
            });
          },
          width: 120,
        )
      ],
    ).show();
  }

  _checkAnswer(bool answer) {
    setState(() {
      if (answer == _questionBank.getQuestionAnswer()) {
        _scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        _scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      }
      if (_questionBank.islastQuestion()) {
        _onAlertButtonPressed(context);        
      }else{
        _questionBank.getNextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                _questionBank.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                _checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                _checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: _scoreKeeper,
        )
      ],
    );
  }
}
