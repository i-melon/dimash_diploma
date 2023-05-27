import 'package:flutter/material.dart';

class AdvItem extends StatelessWidget {
  const AdvItem({super.key, required this.imgLink, required this.text});
  final String imgLink;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
            width: 50,
            child: Image.network(
              '$imgLink',
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 10,
        ),
        Text(
          '$text',
          style: TextStyle(
              shadows: [
                Shadow(
                    offset: Offset.zero,
                    color: Color.fromARGB(255, 164, 220, 177),
                    blurRadius: 4)
              ],
              fontSize: 20,
              color: Color.fromARGB(255, 48, 110, 49),
              fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
