import 'package:flutter/material.dart';
import 'package:quizy/Widgets/answer_button.dart';
import 'package:quizy/Widgets/question.dart';
import 'package:quizy/Widgets/quiz.dart';
import 'package:quizy/screens/result.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var totalScore = 0;
  void reset() {
setState(() {
      _index = 0;
    totalScore = 0;
});
  }

  var _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  var _index = 0;

  void answerQuestion(int score) {
    // if (_index == questions.length - 1) {
    //   _index = -1;
    // }
    setState(() {
      totalScore += score;
      _index++;
      print(_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 10,
              title: Text('QUIZY'),
              backgroundColor: Colors.teal[300],
            ),
            body: _index < _questions.length
                ? Quiz(_index, answerQuestion, _questions)
                : Result(
                    resultScore: totalScore,
                    reset: reset,
                  )),
      ),
    );
  }
}
