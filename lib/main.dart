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
      home: Scaffold(// scaffold is given by flutter which helps us to include other widgets to get a basic structure
          appBar: AppBar(title: Text('My First App')),
          body: Text('this is my default setup')),
    );
  }
}
