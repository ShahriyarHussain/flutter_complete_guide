import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  const Result(this.finalScore, {Key? key}) : super(key: key);

  String get resultPhrase {
    var resultText = "You did it!";
    var avgScore = finalScore / 5.0;
    if (avgScore > 8.0) {
      resultText = "You use Windows and prefer consumerism !";
    } else if (avgScore > 6.0) {
      resultText = "You prefer Apple !";
    } else if (avgScore >= 4.0) {
      resultText = "You like to stay in the middle and get best of both !";
    } else if (avgScore >= 2.0) {
      resultText = "You are slowly moving towards Freedom Movement !";
    } else if (avgScore >= 0.0) {
      resultText = "You prefer freedom and right to tinker !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
