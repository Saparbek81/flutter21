import 'package:flutter/material.dart';
import 'package:sabak_14_bmi_calculator_ui/widgets/Heihgt_container.dart';
import 'package:sabak_14_bmi_calculator_ui/widgets/male_container.dart';
import 'package:sabak_14_bmi_calculator_ui/widgets/weight_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: _MyAppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  malecontainer(
                    icons: Icons.male,
                    text: 'male',
                  ),
                  SizedBox(width: 35),
                  malecontainer(
                    text: 'fameli',
                    icons: Icons.male,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            HeihgtContainer(
              text: 'HEIGHT',
              textCm: '180 sm',
            ),
            SizedBox(
              height: 18,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeightContainer(
                    text: 'WEIGHT',
                    iconadd: Icons.add,
                    iconremove: Icons.remove,
                    san: 60,
                  ),
                  SizedBox(width: 35),
                  WeightContainer(
                    text: 'AGE',
                    iconadd: Icons.add,
                    iconremove: Icons.remove,
                    san: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        color: const Color(0xffff0f65),
        child: const Center(
            child: Text(
          "CALCULATOR",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }

  AppBar _MyAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff221935),
      title: const Center(
        child: Text(
          "BMI CALCULATOR",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
