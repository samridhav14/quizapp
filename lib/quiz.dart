import 'package:flutter/material.dart';
import  './question.dart';
import  'ans.dart';

class Quiz extends StatelessWidget {

  final  List<Map<String, dynamic>> questions;
  final   Function ansquestion;
  final int questionindex;
      Quiz(this.ansquestion,this.questions,this.questionindex);
  @override
  Widget build(BuildContext context) {
    return   Column(
          children: [
            Question(
              questions[questionindex]['question'],
            ),
            // ElevatedButton(
            //   onPressed:
            //       _ansquestion, // here we are passing refrence istead of function so that it get executed when button is pressed
            //   child: const Text('Option 1'),
            // ),
            // ElevatedButton(
            //   onPressed: _ansquestion //() {
            //   //   // here we have used annonymous function because this function will not be called from anywhere else
            //   //   ansquestion;
            //   // }
            //   ,
            //   child: const Text('Option 2'),
            // ),
            // ElevatedButton(
            //   onPressed: _ansquestion
            //   //() {
            //   // it is another way of rpresenting the refrence of function thing both will gave simmilar output
            //   // ansquestion;
            //   //}
            //   ,
            //   child: const Text('Option 3'),
            // ),
            // instead of writing buttons  here we have made an seprate file for them
            // to chanse the q index as we press options we need to pass refrence of our _ansquestion to ans file
            ...(questions[questionindex]['answer'] as List<String>)
                .map((answer) {
              return Answer(ansquestion, answer);
            }).toList()

            //Answer(_ansquestion),
            // Answer(_ansquestion),
            // Answer(_ansquestion),
          ],
        );
  }
}