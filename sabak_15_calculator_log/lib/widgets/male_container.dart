import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class malecontainer extends StatelessWidget {
  const malecontainer({
    super.key,
    required this.text,
    required this.icons,
    required this.iconColor,
    this.onTap,
    required this.iconSize,
    required this.textColor,
  });
  final IconData icons;
  final String text;
  final Color textColor;
  final Color iconColor;
  final void Function()? onTap;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 177,
        width: 150,
        decoration: BoxDecoration(
          color: const Color(0xff0a001f),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            children: [
              Icon(
                icons,
                color: iconColor,
                size: iconSize,
              ),
              AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      text.toUpperCase(),
                      textStyle: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                  totalRepeatCount: 15,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true)
            ],
          ),
        ),
      ),
    );
  }
}
