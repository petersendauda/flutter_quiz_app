import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "question": "What is your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Blue", "score": 5},
        {"text": "Red", "score": 3},
        {"text": "Green", "score": 1}
      ]
    },
    {
      "question": "What is your favorite animal?",
      "answers": [
        {"text": "Bird", "score": 10},
        {"text": "Cat", "score": 5},
        {"text": "Dog", "score": 3},
        {"text": "Lion", "score": 1}
      ]
    },
    {
      "question": "What is your favorite phone brand?",
      "answers": [
        {"text": "Tecno", "score": 3},
        {"text": "SamSung", "score": 5},
        {"text": "Itel", "score": 10},
        {"text": "IPhone", "score": 1}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() => _questionIndex++);
  }

  void _resetQuestions() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : Result(_totalScore, _resetQuestions)),
    );
  }
}
