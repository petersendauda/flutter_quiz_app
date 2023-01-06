import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() restartQuiz;

  Result(this.score, this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Total Score: $score",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restartQuiz,
            child: Text("Restart Questions"),
          ),
        ],
      ),
    );
  }
}
