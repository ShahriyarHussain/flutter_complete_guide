import 'dart:math';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "Among the following People, who you prefer most?",
      "answers": [
        {"text": "Steve Jobs", "score": 10},
        {"text": "Bill Gates", "score": 7},
        {"text": "Sundar Pichai", "score": 3},
        {"text": "Linus Torvalds", "score": 0}
      ]
    },
    {
      "questionText": "What does the word 'Open-Source' mean to you?",
      "answers": [
        {"text": "Insecure Software", "score": 10},
        {"text": "Buggy Software", "score": 7},
        {"text": "Free Software", "score": 3},
        {"text": "Freedom of customization", "score": 0}
      ]
    },
    {
      "questionText": "Does you work involve Adobe Products?",
      "answers": [
        {"text": "Yes, a lot", "score": 10},
        {"text": "Yes, but not a lot", "score": 7},
        {"text": "Barely requires", "score": 3},
        {"text": "Doesn't involve at all", "score": 0}
      ]
    },
    {
      "questionText":
          "Are you concerned about privacy and data collection practices?",
      "answers": [
        {"text": "No, not at all", "score": 10},
        {"text": "No if I get free products", "score": 7},
        {"text": "Yes", "score": 3},
        {"text": "Very concerned and take extreme measures", "score": 0}
      ]
    },
    {
      "questionText": "Do you like Apple products",
      "answers": [
        {"text": "Yes, I'm a fanboy", "score": 10},
        {"text": "Yes, if it's in my capabilities", "score": 7},
        {"text": "Only if the hardware is as good as the price", "score": 3},
        {"text": "No", "score": 0}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    // print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizlet'),
        ),
        backgroundColor: (Colors.white),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
