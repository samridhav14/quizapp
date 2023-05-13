import 'package:flutter/material.dart';
import 'ans.dart';
import './question.dart';
import 'quiz.dart';
import 'result.dart';

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
  // now we cant use const directly we need to set it as final
  final List<Map<String, dynamic>> _questions = const [
    // right now only question are there now use maps which is a key value data structure
    {
      'question': 'Who is better cheems or dogesh',
      'answer': [
        {'text': 'I love cheems', 'score': 8},
        {'text': 'I love dogesh', 'score': 6},
        {'text': 'Both are equal', 'score': 10}
      ],
    },
    {
      'question': 'Which company\'s shoes vimdhayak ji have?',
      'answer': [
        {'text': 'nmike', 'score': 10},
        {'text': 'poma', 'score': 6},
        {'text': 'amdibas', 'score': 8}
      ]
    },
    {
      'question': 'who is more beautiful',
      'answer': [
        {'text': 'chimki', 'score': 8},
        {'text': 'dogelina', 'score': 10},
        {'text': 'vimdhayak\'s wife', 'score': 6}
      ]
    }
  ];

  var _questionIndex = 0;
  int _totalscore = 0;
  void _resetquiz(){
    print(_questionIndex);
    setState(() {
      _questionIndex = 0;
    _totalscore = 0;
    });
  }
  void _ansquestion(int score) {
    // questions is unidentified we need to take it out of built class
    _totalscore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override //its a decorator its there to make code cleaner here over
  // ride basically means we delibrately over riding build
  Widget build(BuildContext context) {
    // here it is compile time constant a thing which is compile time contant is also run time constant
    // we can add const before a value also but both of them are different if we riassign the variable it will work differently
//  const  List<Map<String, dynamic>> questions = [
//       // right now only question are there now use maps which is a key value data structure
//       {
//         'question': 'Who is better cheems or dogesh',
//         'answer': ['I love cheems', 'I love dogesh', 'Both are equal'],
//       },
//       {
//         'question': 'Which company\'s shoes vimdhayak ji have?',
//         'answer': ['nmike', 'poma', 'amdibas']
//       },
//       {
//         'question': 'who is more beautiful',
//         'answer': ['chimki', 'dogelina', 'vimdhayak\'s wife']
//       }
//     ];
    // question =[]; this does not work
    return MaterialApp(
      home: Scaffold(
          // scaffold is given by flutter which helps us to include other widgets to get a basic structure
          appBar: AppBar(title: const Text('Cheems Quiz')),
          /* the problem with body is it cant have multiple widgets in it there for instead of multiple text we will use a column widget which will contain a list of widgets*/
          // body: Text('this is my default setup')),
          body: _questionIndex < _questions.length
              ? Quiz(_ansquestion, _questions, _questionIndex)
              : Result(_totalscore,_resetquiz)),
    );
  }
}
