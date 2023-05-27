import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 80,
      color: Color.fromARGB(255, 229, 230, 231),
      child: Center(
          child: TextButton(
        onPressed: () {},
        child: Text(
          'Connect with me',
          style: TextStyle(color: Colors.grey, fontSize: 25),
        ),
      )),
    );
  }
}
