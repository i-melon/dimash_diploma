import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

FirebaseDatabase database = FirebaseDatabase.instance;

final firebaseApp = Firebase.app();
final rtdb = FirebaseDatabase.instanceFor(
    app: firebaseApp,
    databaseURL:
        'https://dimash-diploma-default-rtdb.asia-southeast1.firebasedatabase.app/');

DatabaseReference ref = FirebaseDatabase.instance.ref("diagnoz");

Future<List<Map<String, dynamic>>> fetchDataFromFirebase() async {
  final reference =
      FirebaseDatabase.instance.reference().child('your_json_node');

  DataSnapshot dataSnapshot = (await reference.once()) as DataSnapshot;
  dynamic jsonData = dataSnapshot.value;

  List<Map<String, dynamic>> listOfDiagnoz = [];

  if (jsonData != null) {
    for (var diagnosis in jsonData['listOfDiagnoz']) {
      listOfDiagnoz.add(diagnosis);
    }
  }

  return listOfDiagnoz;
}

void main() async {
  List<Map<String, dynamic>> listOfDiagnoz = await fetchDataFromFirebase();

  // Используйте список listOfDiagnoz в дальнейшем коде
  print(listOfDiagnoz);
}
