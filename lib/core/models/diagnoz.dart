import 'package:dimash_diploma/core/models/question.dart';

class Diagnoz {
  final String name;
  final List<String> symtoms;
  final List<Question> questions;

  Diagnoz({required this.name, required this.symtoms, required this.questions});
}
