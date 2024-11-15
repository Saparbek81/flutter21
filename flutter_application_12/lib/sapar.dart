import 'package:flutter/material.dart';

// ignore: camel_case_types
class sapar extends StatefulWidget {
  const sapar({super.key});

  @override
  State<sapar> createState() => _saparState();
}

// ignore: camel_case_types
class _saparState extends State<sapar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Flutter hylophone',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 375,
              height: 91,
              color: Colors.red,
            ),
            Container(
              width: 375,
              height: 91,
              color: Colors.green,
            ),
            Container(
              width: 375,
              height: 91,
              color: Colors.red,
            ),
            Container(
              width: 375,
              height: 91,
              color: Colors.yellow,
            ),
            Container(
              width: 375,
              height: 91,
              color: Colors.lime,
            ),
            Container(
              width: 375,
              height: 91,
              color: Colors.teal,
            ),
            Container(width: 375, height: 91, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
