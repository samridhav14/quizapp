import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // it is to ensure that once a string is initialized for a object we cant change it
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    // here this get rebuild everythime the data that is coming from main.dart changes hence statelesswidgets get rebuilt on input change thing is true
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
