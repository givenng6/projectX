import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
      body: Container(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: () {}, child: Text('Client')),
          ElevatedButton(onPressed: () {}, child: Text('Admin'))
          ],
          ),
        ),
      ),
      )
    );
  }
}