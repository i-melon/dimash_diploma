import 'package:dimash_diploma/core/models/answer.dart';
import 'package:dimash_diploma/core/models/diagnoz.dart';
import 'package:dimash_diploma/core/models/list_of_diagnoz.dart';
import 'package:dimash_diploma/core/models/list_of_symptoms.dart';
import 'package:dimash_diploma/core/models/question.dart';
import 'package:dimash_diploma/core/models/symptom.dart';
import 'package:dimash_diploma/src/pages/form_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SymptomsPage extends StatefulWidget {
  const SymptomsPage({super.key});

  @override
  State<SymptomsPage> createState() => SymptomsPageState();
}

class SymptomsPageState extends State<SymptomsPage> {
  List<String> listOfActiveSymptoms = [];
  List<Diagnoz> listOfActiveDiagnoz = [];
  List<Question> listOfActiveQuestions = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Color.fromARGB(255, 16, 38, 65),
          elevation: 5,
          backgroundColor: const Color.fromARGB(255, 241, 148, 158),
          title: Container(
            width: 250,
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/f54a/9bd5/ac16ca75b060c30119405bcf1ffd9525?Expires=1686528000&Signature=gNtda94ORVjNrJL2McRkdvhgK8zG7bSi6zbJb7DaFXVhOydUiMghO43dufODkePePjB2ji0Sv7XJbhSGB4SRbu2dwl~lcZD9UdhS6pNFuUwxofIeeVNMQXc1axnDlG8YNf1ztUB7h3j3osCWyI2eXYdOtQ1t7rUEiZnSEq62sdijXOfpM97UoQmeGNwHVZsBIQoILgl1e2PubyuZ-0p-PI5dpg8D5krPOC05-1mamYj9y5g6uTk1v2p1YoOLRsYTINQF0Pn0AIdrPLrkWiAFVfEbZi5OSInCa97WLsJdLYyjfBQpCAD~ZiNvQMq6PprZRnhfX0AWyj52WPGzXJoglw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
              fit: BoxFit.cover,
            ),
          )),
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'Выберите подходящие симптомы',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 69, 120, 95)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(10),
            width: 400,
            height: 300,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset.zero,
                      spreadRadius: 2,
                      blurRadius: 4,
                      color: Colors.grey)
                ],
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
                itemCount: symptoms.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Checkbox(
                              value: symptoms[index].isActive,
                              onChanged: (value) {
                                setState(() {
                                  symptoms[index].isActive = value!;
                                });
                              }),
                          Text('${symptoms[index].name}'),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.green),
            ),
            onPressed: () {
              for (int i = 0; i < symptoms.length; i++) {
                if (symptoms[i].isActive) {
                  listOfActiveSymptoms.add(symptoms[i].name);
                }
              }
              for (int i = 0; i < listOfDiagnos.length; i++) {
                for (int y = 0; y < listOfDiagnos[i].symptoms.length; y++) {
                  for (int z = 0; z < listOfActiveSymptoms.length; z++) {
                    if (listOfActiveSymptoms[z] ==
                        listOfDiagnos[i].symptoms[y]) {
                      listOfActiveDiagnoz.add(listOfDiagnos[i]);
                    }
                  }
                }
              }
              for (int i = 0; i < listOfActiveDiagnoz.length; i++) {
                for (int y = 0;
                    y < listOfActiveDiagnoz[i].questions.length;
                    y++) {
                  listOfActiveQuestions
                      .add(listOfActiveDiagnoz[i].questions[y]);
                }
              }

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FormPage(
                            questionList1: listOfActiveQuestions,
                            diagnozList1: listOfActiveDiagnoz,
                          )));
            },
            child: Container(
                height: 60,
                width: 200,
                child: Center(
                    child: Text(
                  'NEXT',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ))),
          ),
        ]),
      ),
    );
  }
}
