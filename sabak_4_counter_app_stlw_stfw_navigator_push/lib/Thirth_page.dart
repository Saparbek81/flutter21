import 'package:flutter/material.dart';

class ThirthPage extends StatefulWidget {
  const ThirthPage({super.key});

  @override
  State<ThirthPage> createState() => _ThirthPageState();
}

class _ThirthPageState extends State<ThirthPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(TextForSecondPage),
          //Text(text),
          // Text("$cound2"),
          // ElevatedButton(
          // onPressed:
          // child: const Text('To Thirth Page')),
        ],
      ),
    ));
  }
}
