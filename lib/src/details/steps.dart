import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      margin: EdgeInsets.all(40),
      height: 400,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset.zero,
                color: Colors.green,
                spreadRadius: 2,
                blurRadius: 10)
          ],
          color: Color.fromARGB(255, 226, 226, 226),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Пройдите все этапы опроса',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 16, 38, 65),
                    fontSize: 30)),
            Text('1',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.green,
                    fontSize: 30)),
            Text('Нажмите кнопку старт',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 16, 38, 65),
                    fontSize: 20)),
            Text('2',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.green,
                    fontSize: 30)),
            Text('Заполните графу с симптомами',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 16, 38, 65),
                    fontSize: 20)),
            Text('3',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.green,
                    fontSize: 30)),
            Text('Заполните все бланки опроса',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 16, 38, 65),
                    fontSize: 20)),
            Text('4',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.green,
                    fontSize: 30)),
            Text('Получите результат',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 16, 38, 65),
                    fontSize: 20)),
          ]),
    );
  }
}
