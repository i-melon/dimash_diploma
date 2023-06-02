import 'package:dimash_diploma/core/models/diagnoz.dart';
import 'package:dimash_diploma/core/models/list_of_diagnoz.dart';
import 'package:dimash_diploma/core/models/question.dart';
import 'package:dimash_diploma/src/pages/last_page.dart';

import 'package:dimash_diploma/src/pages/symptoms_page.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage(
      {super.key, required this.questionList1, required this.diagnozList1});
  final List<Question> questionList1;
  final List<Diagnoz> diagnozList1;

  @override
  State<FormPage> createState() =>
      FormPageState(questionList: questionList1, diagnozList: diagnozList1);
}

class FormPageState extends State<FormPage> {
  final List<Question> questionList;
  final List<Diagnoz> diagnozList;
  var questionIndex = 0;

  FormPageState({required this.questionList, required this.diagnozList});
  void ans() {
    if (questionIndex == questionList.length - 1) {
      questionIndex = 0;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LastPage(
                    listOfResult: diagnozList,
                  )));
    }
    for (int i = 0; i < listOfDiagnos.length; i++) {
      if (questionIndex < listOfDiagnos[i].questions.length) {}
    }
    setState(() {
      questionIndex++;
    });
  }

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
              '${questionList[questionIndex].question}',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 69, 120, 95)),
            ),
          ),
          Container(
            width: 400,
            height: 400,
            child: ListView.builder(
                itemCount: questionList[questionIndex].answers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ElevatedButton(
                      onPressed: () {
                        questionList[questionIndex].answers[index].point;
                        ans();
                      },
                      child: Text(
                          '${questionList[questionIndex].answers[index].name}'),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
