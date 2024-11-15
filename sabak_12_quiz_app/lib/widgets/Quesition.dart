// ignore: file_names
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  const Questions({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 120,
      ),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),
      ),
    );
  }
}
