import 'package:flutter/material.dart';
import 'api_service.dart';
import 'question.dart';

class QuizScreen extends StatefulWidget {

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final ApiService api = ApiService();
  List<Question> _questions = [];
  final int _currentQuestionIndex = 0;
  int _score = 0;
  final bool _answered = false;

  // Loads the 10 questions to UI
  @override
  void initState() {
    super.initState();
    loadQuestions();
  }

  void loadQuestions () async {
    final questionData = await api.getQuestions();
    try {
      setState(() {
        _questions = questionData;
      });
    } catch (e) {
      print(e);
    }
  }

  void updateScore () {
    setState(() {
      if (_answered == true) {
        _score += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          ]
      
    )));
  }
}
