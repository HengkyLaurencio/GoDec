import 'package:flutter/material.dart';
import 'package:godec/features/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoDec',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            surface: Color(0xFFFFFFFF),
            onSurface: Color(0xFF23274D),
            primary: Color(0xFF353535)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
