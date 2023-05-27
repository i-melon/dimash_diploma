import 'package:dimash_diploma/core/models/list_of_symptoms.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SymptomsPage extends StatefulWidget {
  const SymptomsPage({super.key});

  @override
  State<SymptomsPage> createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
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
              context.go('/form');
              for (int i = 0; i < symptoms.length; i++) {
                print(symptoms[i].isActive);
              }
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
