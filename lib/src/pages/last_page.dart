import 'package:dimash_diploma/core/models/diagnoz.dart';
import 'package:dimash_diploma/core/models/list_of_doctors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key, required this.listOfResult});
  final List<Diagnoz> listOfResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/');
        },
        child: Icon(Icons.restart_alt),
      ),
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 600,
                    height: 600,
                    child: ListView.builder(
                        itemCount: listOfResult.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              child: Container(
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${listOfResult[index].name}',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  '${listOfResult[index].chance}%',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ));
                        }),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(200, 16, 38, 65),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset.zero,
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 4)
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 400,
                    height: 600,
                    child: ListView.builder(
                        itemCount: listOfDoctors.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              color: Color.fromARGB(200, 16, 38, 65),
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.account_circle_outlined,
                                        size: 60,
                                        weight: 400,
                                        color: Colors.white,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            '${listOfDoctors[index].name}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text('${listOfDoctors[index].number}',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          Text('${listOfDoctors[index].email}',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                          Text(
                                              'grade: ${listOfDoctors[index].grade}',
                                              style:
                                                  TextStyle(color: Colors.grey))
                                        ],
                                      )
                                    ],
                                  )));
                        }),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset.zero,
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 4)
                        ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
