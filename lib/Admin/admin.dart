import 'package:flutter/material.dart';

class AdminMain extends StatefulWidget {
  const AdminMain({Key? key}) : super(key: key);

  @override
  State<AdminMain> createState() => _AdminMainState();
}

class _AdminMainState extends State<AdminMain> {
  List<Map> logs = [
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},
    {'worker': '23ABC', 'position': '2B'},
    {'worker': 'A1124', 'position': 'C9'},
    {'worker': '45SSB', 'position': 'T7'},
    {'worker': '87FHS', 'position': '4D'},

  ];

  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).size.height / 5;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF344955),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: appBarHeight,
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Text(
                        'LOGS',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Color(0xFFF9AA33),
                        ),
                      )
                    ])),
            Container(
              constraints: BoxConstraints(
                minHeight: screenHeight - appBarHeight,
                maxHeight: (logs.length*34)
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF232F34),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50.0),
                ),
              ),
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 20.0),
                  physics: const NeverScrollableScrollPhysics(),
                    itemCount: logs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                logs[index]['worker'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                ),
                              ),
                              Text(
                                logs[index]['position'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 2),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          )
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

/*
* Primary Color
* #344955
* #232F34
* #4A6572
* Secondary Color #F9AA33
*/
