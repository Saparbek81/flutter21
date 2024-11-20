import 'package:flutter/material.dart';

class malecontainer extends StatelessWidget {
  const malecontainer({
    super.key,
    required this.text,
    required this.icons,
    required this.iconColor,
    this.onTap,
    required this.iconSize,
  });
  final IconData icons;
  final String text;
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
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
