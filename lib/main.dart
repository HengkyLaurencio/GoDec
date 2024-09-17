import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:godec/core/router/app_router.dart';
import 'core/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoDec',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router, 
      debugShowCheckedModeBanner: false,
    );
  }
}
