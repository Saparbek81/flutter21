import 'package:flutter/material.dart';

class HeihgtContainer extends StatelessWidget {
  const HeihgtContainer({
    super.key,
    required this.text,
    required this.textCm,
  });
  final String text;
  final String textCm;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 176,
      decoration: BoxDecoration(
        color: const Color(0xff0a001f),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            //  Icon(
            //  icon,
            //    color: Colors.white,
            //    size: 68,
            //    ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              textCm,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            Slider.adaptive(
              thumbColor: const Color(0xffff0265),
              activeColor: Colors.white,
              inactiveColor: Colors.green,
              max: 230,
              value: 180,
              onChanged: (v) {},
            )
          ],
        ),
      ),
    );
  }
}
