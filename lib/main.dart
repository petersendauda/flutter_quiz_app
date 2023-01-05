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

  final questions = const [
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
      _questionIndex == questions.length - 1
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
        body: _questionIndex == questions.length - 1
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]["question"] as String),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(answer, _answerQuestion);
                  }).toList()
                ],
              )
            : Center(
                child: Column(
                  children: [
                    Text("No More Questions!!!"),
                    ElevatedButton(
                      onPressed: () => _questionIndex = 0,
                      child: Text("Start Again"),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
