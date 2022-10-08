import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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