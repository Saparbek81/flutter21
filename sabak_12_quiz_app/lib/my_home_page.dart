import 'package:flutter/material.dart';
import 'package:sabak_12_quiz_app/oop_for_question.dart';
import 'package:sabak_12_quiz_app/widgets/Quesition.dart';
import 'package:sabak_12_quiz_app/widgets/custom_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: MyApp(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Questions(
            text: quizeList[0].question,
          ),
          const CustomButton(
            text: 'Туура',
            color: Color(0xff4cb050),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomButton(text: 'Туура эмес', color: Color(0xffaf443a)),
        ]),
      ),
    );
  }

  AppBar MyApp() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Tupshyrma 7',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
      ),
    );
  }
}
