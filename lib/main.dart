import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // if (_questionIndex == 1) {
      //   _questionIndex = 0;
      // } else {
      //   _questionIndex = _questionIndex + 1;
      // }
      _questionIndex == 1 ? _questionIndex = 0 : _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      "What is your favorite color?",
      "What is your favorite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            Answer("Answer 1", _answerQuestion),
            Answer("Answer 2", _answerQuestion),
            Answer("Answer 3", _answerQuestion),
            Answer("Answer 4", _answerQuestion),
          ],
        ),
      ),
    );
  }
}
