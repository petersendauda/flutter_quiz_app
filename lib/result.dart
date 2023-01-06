import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("No More Questions!!!"),
          ElevatedButton(
            onPressed: () => {},
            child: Text("Start"),
          )
        ],
      ),
    );
  }
}
