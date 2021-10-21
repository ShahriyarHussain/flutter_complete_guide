import 'dart:math';

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = Random().nextInt(5);
    });
    print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's you school?",
      "What's your height?",
      "What's your name?",
      "What's your dogs name?",
      "What's this app doing ?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        backgroundColor: (Colors.white),
        body: Column(
          children: [
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer 3"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print("Answer 2"),
            )
          ],
        ),
      ),
    );
  }
}
