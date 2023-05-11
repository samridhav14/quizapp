import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp()); // alternative way of writnig void main

class MyApp extends StatelessWidget {
  @override //its a decorator its there to make code cleaner here over
  // ride basically means we delibrately over riding build
  Widget build(BuildContext context) {
    void ansquestion(){
       print('question answered');
    }
    return MaterialApp(
      home: Scaffold(
        // scaffold is given by flutter which helps us to include other widgets to get a basic structure
        appBar: AppBar(title: const Text('My First App')),
        /* the problem with body is it cant have multiple widgets in it there for instead of multiple text we will use a column widget which will contain a list of widgets*/
        // body: Text('this is my default setup')),
        body: Column(
          children: [
            const Text('    the question?   '),
            ElevatedButton(
              onPressed: ansquestion, // here we are passing refrence istead of function so that it get executed when button is pressed
              child: const Text('Option 1'),
            ),
            ElevatedButton(
              onPressed: ansquestion,
              child:const Text('Option 2'),
            ),
            ElevatedButton(
              onPressed: ansquestion,
              child:const Text('Option 3'),
            ),
          ],
        ),
      ),
    );
  }
}
