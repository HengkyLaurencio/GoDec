import 'package:flutter/material.dart';
import 'package:godec/promo/presentation/promo_page.dart';
import 'package:godec/landing_page.dart';
import 'package:godec/features/main/presentation/page/main_page.dart';
import 'package:godec/features/main/presentation/page/home_page.dart';
import 'package:godec/order_page.dart';

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
      home: const OrderPage(),
    );
  }
}