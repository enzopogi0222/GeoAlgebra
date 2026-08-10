import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.blue,
    brightness: Brightness.light,

    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
  );
}