import 'package:dimash_diploma/core/models/list_of_diagnoz.dart';
import 'package:dimash_diploma/core/models/question.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  List<String> questions = [
    'Сколько кашель?',
    'Сколько кашель?1',
    'Сколько кашель?2',
    'Сколько кашель?3',
  ];

  List<Question> questionList = listOfDiagnos[0].questions;
  var questionIndex = 0;
  void ans() {
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
              'https://s3-alpha-sig.figma.com/img/9f12/7ff8/3bb30dd79599efed645caf520a89703f?Expires=1685318400&Signature=eFrj7JPHbTE2wcS3y1AP4dzKck4d7u~30Vr8KUPvSkgWCifjTZhWXJq52x1hGHB5xKBKmZsbUu54mzNvM18mgP5K3iKApdk5Z1OA2ul~u2ue9aDTaLh4nqGI3nAHpYqnofftedrgsS9tKaIdRwp5fvOCbQ53b1Xi66b68EtQa5qxDZmWl6E1YYRjwVdbmiI3cNe0nen2MhXlYuqWWZ1WkOgcRF2~g1eEovtWTHy9cA7RFIr0UH4ardz1HRpV9vwzHsKASzVWTA04hrv1GRQZKGpyMWEizaYRHmPBuQHUf2gdkwJK-PxpsA0RVXt69bY~NzSPjlx3NVGR41GuREfIhw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
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
                        ans();
                      },
                      child:
                          Text('${questionList[questionIndex].answers[index]}'),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
