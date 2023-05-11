import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp()); // alternative way of writnig void main

class MyApp extends StatelessWidget {
  @override //its a decorator its there to make code cleaner here over
  // ride basically means we delibrately over riding build
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // scaffold is given by flutter which helps us to include other widgets to get a basic structure
        appBar: AppBar(title: Text('My First App')),
        /* the problem with body is it cant have multiple widgets in it there for instead of multiple text we will use a column widget which will contain a list of widgets*/
        // body: Text('this is my default setup')),
        body: Column(
          children: [
            Text('    the question?   '),
            ElevatedButton(
              onPressed: null,
              child: Text('Option 1'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Option 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Option 3'),
            ),
          ],
        ),
      ),
    );
  }
}
