import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final void Function(int) callback;
  final int questionIndex;

  Quiz(this.questions, this.callback, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["question"] as String),
        ...(questions[questionIndex]["answers"] as List<Map>).map((answer) {
          return Answer(
              answer["text"] as String, () => callback(answer["score"]));
        }).toList()
      ],
    );
  }
}
