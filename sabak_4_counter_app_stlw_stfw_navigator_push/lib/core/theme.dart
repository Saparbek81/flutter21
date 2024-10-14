import 'package:flutter/material.dart';

class MyTheme {
  ThemeData myLightTheme = ThemeData(
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w400),
        displayLarge: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
          color: Colors.blue,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ));

  ///MARK: Bodu bgc
  ThemeData myBodyBgccolor = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
  );
}
