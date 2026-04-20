// Question Model
class Question {
  final String question;
  final String correct_answer;
  final List<String> results; // correct answer plus incorrect answers

  
Question ({
  required this.question,
  required this.correct_answer,
  required this.results
});

// Mapped Question Model to Json
factory Question.fromJson(Map<String, dynamic> json) {
  List<String> results = List<String>.from(json['incorrect_answers']);
  results.add(json['correct_answer']);
  results.shuffle();

  return Question(
    question: json['question'],
    correct_answer: json['correct_answer'],
    results: results
  );
}

}
