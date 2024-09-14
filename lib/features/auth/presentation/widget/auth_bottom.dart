import 'package:flutter/material.dart';

class AuthBottom extends StatelessWidget {
  final String text;
  final MaterialPageRoute route;
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
          Navigator.pushReplacement(context, route);
        },
        child: Text(
          text,
          style: TextStyle(color: color),
        ),
      ),
    );
  }
}
