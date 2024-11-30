import 'package:flutter/material.dart';
import 'package:sabak_15_calculator_log/widgets/Heihgt_container.dart';
import 'package:sabak_15_calculator_log/widgets/calculator.dart';
import 'package:sabak_15_calculator_log/widgets/male_container.dart';
import 'package:sabak_15_calculator_log/widgets/weight_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  int height = 100;
  int weight = 60;
  int age = 28;
  void maleFun() {
    setState(() {
      isMale = !isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221935),
      appBar: _MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  malecontainer(
                    onTap: () => maleFun(),
                    icons: Icons.male,
                    text: 'male',
                    iconColor: isMale
                        ? const Color.fromRGBO(244, 67, 54, 1)
                        : Colors.white,
                    iconSize: isMale ? 100 : 70,
                    textColor: isMale ? const Color(0xffceccd2) : Colors.red,
                  ),
                  const SizedBox(width: 35),
                  malecontainer(
                    onTap: () => maleFun(),
                    text: 'fameli',
                    iconColor: isMale ? Colors.white : Colors.red,
                    icons: Icons.male,
                    iconSize: isMale ? 70 : 100,
                    textColor: isMale ? Colors.red : const Color(0xffceccd2),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            HeihgtContainer(
              text: 'HEIGHT',
              san: height,
              sm: 'sm',
              widget: Slider.adaptive(
                thumbColor: const Color(0xffff0265),
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
                min: 0,
                max: 300,
                value: height.toDouble(),
                onChanged: (v) {
                  setState(() {});
                  var height = v.toInt();
                  print(height);
                },
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeightContainer(
                    onPressedadd: () => setState(() => weight++),
                    onPressedremove: () => setState(() => weight--),
                    text: "weight",
                    san: weight,
                    iconadd: Icons.add,
                    iconremove: Icons.remove,
                  ),
                  const SizedBox(width: 35),
                  WeightContainer(
                    onPressedadd: () => setState(() => age++),
                    onPressedremove: () => setState(() => age--),
                    text: 'AGE',
                    iconadd: Icons.add,
                    iconremove: Icons.remove,
                    san: age,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculator(weight: weight, height: height),
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
