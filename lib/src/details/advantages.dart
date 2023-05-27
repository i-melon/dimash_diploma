import 'package:dimash_diploma/src/details/item.dart';
import 'package:flutter/material.dart';

class Advantages extends StatelessWidget {
  const Advantages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AdvItem(
              imgLink: 'https://cdn.onlinewebfonts.com/svg/img_7412.png',
              text: 'Super fast'),
          AdvItem(
              imgLink:
                  'https://cdn4.iconfinder.com/data/icons/pictype-free-vector-icons/16/home-512.png',
              text: 'Stay home'),
          AdvItem(
              imgLink: 'https://cdn.onlinewebfonts.com/svg/img_456510.png',
              text: 'Free'),
          AdvItem(
              imgLink: 'https://cdn.onlinewebfonts.com/svg/img_452569.png',
              text: 'Understandable')
        ],
      ),
    );
  }
}
