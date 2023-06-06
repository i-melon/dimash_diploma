import 'package:dimash_diploma/core/models/answer.dart';

class Question {
  final String question;
  final List<Answer> answers;

  Question({required this.question, required this.answers});

  // factory Question.fromJson(Map<String, dynamic> json) {
  //   return Question(
  //     question: json['question'],
  //     answers: List<Answer>.from(json['answers']),
  //   );
  // }
}
