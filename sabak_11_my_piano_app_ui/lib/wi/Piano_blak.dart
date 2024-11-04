import 'package:flutter/material.dart';

class PianoBlack extends StatelessWidget {
  const PianoBlack({
    super.key,
    required this.text,
    required this.left,
    this.right,
    this.onPressed,
  });
  final double? left;
  final double? right;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      child: Container(
          width: 38.9,
          height: 127.64,
          decoration: BoxDecoration(
              color: const Color(0xff171a26),
              border: Border.all(color: const Color(0xff171a26)),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19.6,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )),
    );
  }
}
