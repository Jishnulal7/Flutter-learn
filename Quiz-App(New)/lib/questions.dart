import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  dynamic activeScreen = const HomeScreen();

  void switchScreen() {
    setState(() {
      activeScreen = const Question();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
