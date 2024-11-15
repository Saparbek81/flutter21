import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak_8_dice_app/Widgets/custom_button.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFE93B),
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Center(
              child: Text('Dice App'),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/die_face_1.svg',
                      height: 200,
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/die_face_2.svg',
                      height: 200,
                    ),
                  ),
                ],
              ),
              const CustomButton(),
            ],
          ),
        ));
  }
}
