import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answertext;
  const Answer(this.selecthandler,this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size(1, 45),backgroundColor: Color.fromARGB(225, 232, 196, 15) ,foregroundColor: Color.fromARGB(255, 255, 59, 59)),
        child: Text(answertext),
        onPressed: () => selecthandler(),
                ),
      );
  }
}
