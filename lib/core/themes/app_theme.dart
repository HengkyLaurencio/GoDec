import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF23274D),
      primary: Color(0xFF353535),
      onPrimary: Color(0xFF336B87),
    ),
    useMaterial3: true,
  );
}
