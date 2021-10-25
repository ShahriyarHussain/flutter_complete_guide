import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  late final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          questionText,
          style: const TextStyle(fontSize: 23),
          textAlign: TextAlign.center,
        ));
  }
}
