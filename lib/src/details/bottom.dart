import 'package:dimash_diploma/core/models/db.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  var num = '';
  var email = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 120,
      color: Color.fromARGB(255, 229, 230, 231),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () async {
              final snapshot = await ref.child("diagnoz").get();
              if (snapshot.exists) {
                print(snapshot.value);
              } else {
                print('No data available.');
              }
              setState(() {
                num = '8-771-222-16-11';
                email = 'dimash21dautov@gmail.com';
              });
            },
            child: Text(
              'Connect with me',
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
          ),
          Text('$num'),
          Text('$email')
        ],
      )),
    );
  }
}
