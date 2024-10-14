import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(
      {super.key, required this.count2, required this.textForSeconPage});
  final int count2;
  final String textForSeconPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(textForSeconPage), Text("$count2")],
        ),
      ),
    );
  }
}
