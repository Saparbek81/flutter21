import 'package:flutter/material.dart';

class HeihgtContainer extends StatelessWidget {
  const HeihgtContainer({
    super.key,
    required this.text,
    required this.sm,
    required this.san,
    required this.widget,
  });
  final String text;
  final String sm;
  final int san;
  final Widget widget;

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
                color: Color(0xffceccd2),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(san.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    )),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  sm,
                  style: const TextStyle(
                    color: Color(0xffceccd2),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            widget,
          ],
        ),
      ),
    );
  }
}
