import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';
import './quiz.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  final _questions = const [
    {
      "question": "What is your favorite color?",
      "answers": ["Black", "Blue", "Red", "Green"]
    },
    {
      "question": "What is your favorite animal?",
      "answers": ["Bird", "Cat", "Dog", "Lion"]
    },
    {
      "question": "What is your favorite phone brand?",
      "answers": ["Tecno", "SamSung", "Item", "IPhone"]
    }
  ];

  void _answerQuestion() {
    setState(() {
      // if (_questionIndex == 1) {
      //   _questionIndex = 0;
      // } else {
      //   _questionIndex = _questionIndex + 1;
      // }
      _questionIndex == _questions.length - 1
          ? _questionIndex = 0
          : _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex == _questions.length - 1
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Center(
                child: Column(
                  children: [
                    Text("No More Questions!!!"),
                    ElevatedButton(
                      onPressed: () => setState(() => _questionIndex = 0),
                      child: Text("Start Again"),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
