import 'package:dimash_diploma/src/details/advantages.dart';
import 'package:dimash_diploma/src/details/bottom.dart';
import 'package:dimash_diploma/src/details/find.dart';
import 'package:dimash_diploma/src/details/item.dart';
import 'package:dimash_diploma/src/details/start.dart';
import 'package:dimash_diploma/src/details/steps.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 248, 248, 248),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 150,
              ),
              child: Column(
                children: [
                  StartBlock(),
                  Advantages(),
                  Steps(),
                  Find(),
                ],
              ),
            ),
            Bottom()
          ],
        ),
      ),
    );
  }
}
