import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int score;
   Function resethandler;
  Result(this.score,this.resethandler);
  String get resultPhrase {
    String temp = 'Thank\'s for participating in quiz your score is :';
    temp += score.toString();
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        resultPhrase,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      TextButton(
          onPressed: () => resethandler(),
          child: const Text('Reset Quiz'),),
    ]));
  }
}
