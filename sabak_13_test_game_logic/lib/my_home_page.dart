import 'package:flutter/material.dart';
import 'package:sabak_13_test_game_logic/oop_for_question.dart';
import 'package:sabak_13_test_game_logic/widgets/Quesition.dart';
import 'package:sabak_13_test_game_logic/widgets/custom_button.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionNumber = 0;
  int tuuraJoop = 0;
  int tuuraEmesJoop = 0;
  questionAnswer() {
    if (quizeList[questionNumber].answer == true ||
        quizeList[questionNumber].answer == false) {
      tuuraJoop++;
      questionNumber++;
      print("tuuraJoop ${tuuraJoop.toInt()}");
    } else if (quizeList[questionNumber].answer == true ||
        quizeList[questionNumber].answer == false) {
      tuuraEmesJoop++;
      questionNumber++;
      print("tuuraEmesJoop ${tuuraEmesJoop.toInt()}");
    }
    if (questionNumber > 4) {
      questionNumber = 0;
      tuuraJoop = 0;
      tuuraEmesJoop = 0;
    }
    setState(() {});
  }

  Future<void> showTestDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('TEST'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Бфштоо'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: MyApp(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Questions(
            text: quizeList[questionNumber].question,
          ),
          CustomButton(
              text: 'Туура',
              color: const Color(0xff4cb050),
              onPressed: () {
                questionAnswer();
              }),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Туура эмес',
            color: const Color(0xffaf443a),
            onPressed: () {
              questionAnswer();
            },
          ),
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
