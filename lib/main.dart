// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int _totalScore = 0;

  var _questions = [
    {
      'question': 'What is your faviorite Youtube channel ?',
      'answers': [
        {'text': 'Ankit Bhatia', 'score': 1},
        {'text': 'travelling mondays', 'score': 2},
        {'text': 'counting miles', 'score': 3}
      ]
    },
    {
      'question': 'What is your faviorite color ?',
      'answers': [
        {'text': 'Blue', 'score': 3},
        {'text': 'pink', 'score': 2},
        {'text': 'yellow', 'score': 1}
      ]
    },
    {
      'question': 'What is your hobby ?',
      'answers': [
        {'text': 'Photographer', 'score': 3},
        {'text': 'painiing', 'score': 2},
        {'text': 'Doctor', 'score': 1}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    if (questionIndex < _questions.length) {
      setState(() {
        questionIndex += 1;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Quiz App"),
              //  titleTextStyle: TextStyle(color: Color.fromARGB(255, 224, 238, 100)),
            ),
            body: questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: questionIndex)
                : Result(totalScore: _totalScore, resetQuiz: resetQuiz)));
  }
}
