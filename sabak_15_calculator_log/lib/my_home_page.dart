import 'package:flutter/material.dart';
import 'package:sabak_15_calculator_log/widgets/Heihgt_container.dart';
import 'package:sabak_15_calculator_log/widgets/male_container.dart';
import 'package:sabak_15_calculator_log/widgets/weight_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
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
                    iconSize: isMale ? 80 : 35,
                  ),
                  const SizedBox(width: 35),
                  malecontainer(
                    onTap: () => maleFun(),
                    text: 'fameli',
                    iconColor: isMale ? Colors.white : Colors.red,
                    icons: Icons.male,
                    iconSize: isMale ? 35 : 80,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const HeihgtContainer(
              text: 'HEIGHT',
              san: 180,
              sm: 'sm',
            ),
            const SizedBox(
              height: 18,
            ),
            const Center(
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
