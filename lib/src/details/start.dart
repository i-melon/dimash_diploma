import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartBlock extends StatelessWidget {
  const StartBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Color.fromARGB(200, 16, 38, 65),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                spreadRadius: 1,
                blurRadius: 5,
                color: Color.fromARGB(255, 166, 166, 166))
          ]),
      height: 400,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Бесплатная проверка симптомов',
              style: TextStyle(color: Colors.white, fontSize: 40)),
          Text(
              'Ответье на вопросы, заполните небольшой опрос, и мы сможем прогнозировать заболевание вашего ребенка за 5 минут. ',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.green),
            ),
            onPressed: () {
              context.go('/symptoms');
            },
            child: Container(
                height: 60,
                width: 200,
                child: Center(
                    child: Text(
                  'START',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ))),
          ),
        ],
      )),
    );
  }
}
