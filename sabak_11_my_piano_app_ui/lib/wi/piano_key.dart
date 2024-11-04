import 'package:flutter/material.dart';

class PianoKey extends StatelessWidget {
  const PianoKey({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
        ),
        minimumSize: const Size(54.91, 217.93),
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(child: Text(text)),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
