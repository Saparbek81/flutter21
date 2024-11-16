import 'package:flutter/material.dart';
import 'package:sabak_14_bmi_calculator_ui/widgets/male_container.dart';

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
                  malecontainer(),
                  SizedBox(
                    width: 35,
                  ),
                  malecontainer(),
                ],
              ),
            ),
          ],
        ),
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
