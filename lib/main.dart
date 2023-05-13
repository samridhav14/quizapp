import 'package:flutter/material.dart';
import 'ans.dart';
import './question.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(const MyApp()); // alternative way of writnig void main

class MyApp extends StatefulWidget {
   const MyApp({super.key});
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
  // State<MyApp> createState() => _MyAppState();
}

// we have two class because when the external data changes Myapp class can be recreated how ever state is persistent it is connected to myapp class but technically it is not recreated just the widget tree is rebuilt
class _MyAppState extends State<MyApp> {
  //widgetname+state
  var _questionIndex = 0;
  void _ansquestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override //its a decorator its there to make code cleaner here over
  // ride basically means we delibrately over riding build
  Widget build(BuildContext context) {
    // here it is compile time constant a thing which is compile time contant is also run time constant
 // we can add const before a value also but both of them are different if we riassign the variable it will work differently
 const  List<Map<String, dynamic>> questions = [
      // right now only question are there now use maps which is a key value data structure
      {
        'question': 'Who is better cheems or dogesh',
        'answer': ['I love cheems', 'I love dogesh', 'Both are equal'],
      },
      {
        'question': 'Which company\'s shoes vimdhayak ji have?',
        'answer': ['nmike', 'poma', 'amdibas']
      },
      {
        'question': 'who is more beautiful',
        'answer': ['chimki', 'dogelina', 'vimdhayak\'s wife']
      }
    ];
    // question =[]; this does not work
    return MaterialApp(
      home: Scaffold(
        // scaffold is given by flutter which helps us to include other widgets to get a basic structure
        appBar: AppBar(title: const Text('Cheems Quiz')),
        /* the problem with body is it cant have multiple widgets in it there for instead of multiple text we will use a column widget which will contain a list of widgets*/
        // body: Text('this is my default setup')),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['question'],
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
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_ansquestion, answer);
            }).toList()

            //Answer(_ansquestion),
            // Answer(_ansquestion),
            // Answer(_ansquestion),
          ],
        ),
      ),
    );
  }
}
