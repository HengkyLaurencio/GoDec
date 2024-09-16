import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthBottom extends StatelessWidget {
  final String text;
  final String route;
  final Color bgColor;
  final Color color;
  const AuthBottom(
      {super.key,
      required this.text,
      required this.route,
      required this.bgColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(color: bgColor),
      child: TextButton(
        onPressed: () {
          context.push(route);
        },
        child: Text(
          text,
          style: TextStyle(color: color),
        ),
      ),
    );
  }
}
