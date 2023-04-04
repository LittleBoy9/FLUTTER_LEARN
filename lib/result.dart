import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result({required this.totalScore,required this.resetQuiz});

  String get resultPhrase {
    if (totalScore >= 8) {
      return ('Briliant job...!!!');
    } else if (totalScore >= 5) {
      return ('Well Done...!!!');
    } else {
      return ('Not So Good...!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
        Text(resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center
        ),
        TextButton(onPressed: resetQuiz, child: Text('Try Again...'), style: ButtonStyle(alignment: Alignment.center, foregroundColor: MaterialStateProperty.all<Color>(Colors.green)))
      ])
    );
  }
}
