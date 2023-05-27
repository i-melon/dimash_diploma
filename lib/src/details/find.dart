import 'package:flutter/material.dart';

class Find extends StatelessWidget {
  const Find({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Center(
        child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Color.fromARGB(255, 241, 148, 158),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                      blurRadius: 5,
                      color: Color.fromARGB(255, 28, 37, 113))
                ]),
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Найдите опытного врача',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 63, 163, 93),
                        fontSize: 50,
                        shadows: [
                          Shadow(
                              offset: Offset.zero,
                              color: Colors.white,
                              blurRadius: 4)
                        ])),
                Text('Ознакомтесь с отзывами, оставленными другими клиентами',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 16, 38, 65),
                        fontSize: 20)),
                Text('Свяжитесь и получите полгую консультацию',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 16, 38, 65),
                        fontSize: 20)),
                Text('Оцените работу специалиста',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 16, 38, 65),
                        fontSize: 20))
              ],
            ),
          ),
          Container(
            height: 500,
            child: Image.network(
                'https://s3-alpha-sig.figma.com/img/9630/72a2/4a6ff4f05d42788907e003f6df8174c0?Expires=1685318400&Signature=RcOhcEEKYGEApquFXATwCzp5GR5xZgzTYjTc4tywryoKSnxJ-2t9y68HiSsUFYVx3mchoBcLQjkIIiVdeSKFsuiaVkIL-2YZ7RNv6rRD~AV54Qjxng5vkSToXavH7Q37f1GmDQsDC4eIu4DuvMQeGDhVD69jPDrp2LtGxqP0WE-YQcNLJz6B2wKLCBHBV8cd33zyOtfYeg0PJy1e4e0qABxnbMR8Oei-2sryrCBjC81wuwGVHA5qzWtF0IM9kKp6-P25mcrg5BreRZq7LwpupWMBbAQkuTa6y~CxEmhtih2foCdrHz7DI53pNqEWBK5pgPflvlS~TR29lGyleKomJg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                fit: BoxFit.cover),
          )
        ]),
      ),
    );
  }
}
