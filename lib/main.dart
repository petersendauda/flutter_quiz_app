import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
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
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 3"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
