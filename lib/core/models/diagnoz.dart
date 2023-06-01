import 'package:dimash_diploma/core/models/question.dart';

class Diagnoz {
  final String name;
  final List<String> symtoms;
  final List<Question> questions;
  var chance = 0.0;

  Diagnoz({required this.name, required this.symtoms, required this.questions});
}
