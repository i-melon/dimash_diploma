import 'package:dimash_diploma/core/models/question.dart';
import 'package:dimash_diploma/core/models/symptom.dart';

class Diagnoz {
  final String name;
  final List<String> symptoms;
  final List<Question> questions;
  double chance = 0;

  Diagnoz(
      {required this.name, required this.symptoms, required this.questions});

  // factory Diagnoz.fromJson(Map<String, dynamic> json) {
  //   return Diagnoz(
  //     name: json['name'],
  //     symptoms: List<Symptom>.from(json['symptomps']
  //         .map((symptomJson) => Symptom.fromJson(symptomJson))),
  //     questions: List<Question>.from(json['questions']
  //         .map((questionJson) => Question.fromJson(questionJson))),
  //   );
  // }
}
