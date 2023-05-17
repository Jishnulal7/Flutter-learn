import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 5},
        {'text': 'White', 'score': 4}
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 5},
        {'text': 'Snake', 'score': 1},
        {'text': 'Lion', 'score': 2}
      ],
    },
    {
      'questionText': "What's your favorite food?",
      'answers': [
        {'text': 'Biriyani', 'score': 2},
        {'text': 'Mandhi', 'score': 3},
        {'text': 'Porotta&Beef', 'score': 5},
        {'text': 'Dosa', 'score': 4}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('More questions are available');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore ,_resetQuiz),
      ),
    );
  }
}
