import 'package:flutter/material.dart';

class malecontainer extends StatelessWidget {
  const malecontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 177,
        width: 150,
        decoration: BoxDecoration(
          color: const Color(0xff0a001f),
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
