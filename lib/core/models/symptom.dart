class Symptom {
  final String name;
  bool isActive = false;

  Symptom({required this.name});

  // factory Symptom.fromJson(Map<String, dynamic> json) {
  //   return Symptom(
  //     name: json['name'],
  //   );
  // }
}
