import 'package:flutter/material.dart';
import 'question.dart';

class QuizScreen extends StatefulWidget {

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<String> _questions;
  final int _currentQuestionIndex = 0;
  final int _score = 0;
  final bool _answered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary
      ),
      body: Center(
        child: Column(
      
    )));
  }
}
