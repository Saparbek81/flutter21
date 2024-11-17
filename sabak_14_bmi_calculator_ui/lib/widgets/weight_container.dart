import 'package:flutter/material.dart';

class WeightContainer extends StatelessWidget {
  const WeightContainer({
    super.key,
    required this.text,
    required this.iconadd,
    required this.iconremove,
    required this.san,
  });
  final String text;
  final IconData iconadd;
  final IconData iconremove;
  final int san;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              san.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800),
            ),
            Row(
              children: [
                IconButton(
                  color: Colors.red,
                  icon: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      iconadd,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  onPressed: () {},
                ),

                const SizedBox(width: 8), // Add some space between icons
                Icon(
                  iconremove,
                  color: Colors.white,
                  size: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
