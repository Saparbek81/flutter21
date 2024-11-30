import 'package:flutter/material.dart';
import 'package:sabak_15_calculator_log/mehtods/alert_dialog.dart';

class Calculator extends StatelessWidget {
  const Calculator({
    super.key,
    required this.weight,
    required this.height,
  });

  final int weight;
  final int height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          final recult = (weight / ((height / 100) * (height / 100)));
          if (recult > 0 && recult <= 18.5) {
            AlertClass().showMyDialog(context, text: 'Сиз арыксыз');
          } else if (recult > 18.5 && recult <= 25) {
            AlertClass()
                .showMyDialog(context, text: 'сиздин салмагыныз нормалдуу');
          } else if (recult > 25 && recult <= 30) {
            AlertClass()
                .showMyDialog(context, text: 'сиздин салмагыныз ашыкча');
          } else if (recult > 30 && recult <= 35) {
            AlertClass()
                .showMyDialog(context, text: 'сиздин салмагыныз өтө ашыкча');
          } else if (recult > 35 && recult <= 40) {
            AlertClass().showMyDialog(context,
                text: 'сиз салмак боюнча ойлонушунуз керек');
          }
        },
        child: Container(
          height: 73,
          color: const Color(0xffff0f65),
          child: const Center(
              child: Text(
            "CALCULATOR",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          )),
        ));
  }
}
