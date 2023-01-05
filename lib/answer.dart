import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function() callback;

  Answer(this.answer, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: callback,
        child: Text(answer),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
      ),
      width: double.infinity,
    );
  }
}
