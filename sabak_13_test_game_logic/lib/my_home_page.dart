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
  List<bool> allAnswers = [];
  questionAnswer(bool isTrue) {
    if (quizeList[questionNumber].answer == isTrue) {
      tuuraJoop++;
      questionNumber++;
      allAnswers.add(true);
    } else {
      tuuraEmesJoop++;
      questionNumber++;
      allAnswers.add(false);
      print("tuuraEmesJoop ${tuuraEmesJoop.toInt()}");
    }
    if (questionNumber >= quizeList.length) {
      questionNumber = quizeList.length - 1;
      showTestDialog(context);
    }
    setState(() {});
  }

  Future<void> showTestDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Text('Туура жооп: $tuuraJoop',
                  style: const TextStyle(color: Colors.green, fontSize: 15)),
              const SizedBox(width: 5),
              Text('Ката жооп: $tuuraEmesJoop',
                  style: const TextStyle(color: Colors.red, fontSize: 15)),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                print('abal: ${questionNumber = 0}');

                questionNumber = 0;
                tuuraJoop = 0;
                tuuraEmesJoop = 0;
                allAnswers.clear();
                Navigator.pop(context);
                setState(() {});
              },
              child: const Text('Баштоо'),
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
      appBar: MyAppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Questions(
            text: quizeList[questionNumber].question,
          ),
          CustomButton(
              text: 'Туура',
              color: const Color(0xff4cb050),
              onPressed: () {
                questionAnswer(true);
              }),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Туура эмес',
            color: const Color(0xffaf443a),
            onPressed: () {
              questionAnswer(false);
            },
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
            children: allAnswers.map((e) {
          return Icon(
            e ? Icons.done : Icons.close,
            color: e ? Colors.green : Colors.red,
          );
        }).toList()),
      ),
    );
  }

  AppBar MyAppBar() {
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
