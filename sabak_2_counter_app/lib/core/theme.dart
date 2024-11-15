import 'package:flutter/material.dart';

class MyTheme {
  ThemeData myLightTheme = ThemeData(
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.white, 
          fontSize: 30, 
          fontWeight:FontWeight.w400
          ),
    ),
  );
  ///MARK: Bodu bgc
  ThemeData myBodyBgccolor = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
  );
  }
