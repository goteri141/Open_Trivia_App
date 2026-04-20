import 'package:http/http.dart' as http;
import 'dart:convert';
import 'question.dart';

class ApiService {

  // Loading 10 questions from the Open Trivia Database
  Future<List<Question>> getQuestions() async {
    final String baseUrl = 'https://opentdb.com/api.php?amount=10&category=9&difficulty=easy&type=multiple';

    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        // List the 10 questions based on the question model
        final questions = (data['results'] as List)
        .map((item) => Question.fromJson(item))
        .toList();

        return questions;
      } else {
        throw Exception('Failed to load questions');
      }   
    } catch (e) {
      throw Exception('Error $e');
    }
}}
