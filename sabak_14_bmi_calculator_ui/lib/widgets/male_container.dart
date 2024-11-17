import 'package:flutter/material.dart';

class malecontainer extends StatelessWidget {
  const malecontainer({
    super.key,
    required this.text,
    required this.icons,
  });
  final IconData icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              color: Colors.white,
              size: 68,
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
    );
  }
}
