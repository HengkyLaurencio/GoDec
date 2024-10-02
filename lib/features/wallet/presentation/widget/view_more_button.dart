import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 

class ViewMoreButton extends StatelessWidget {
  final String targetScreen;

  const ViewMoreButton({super.key, required this.targetScreen});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.push(targetScreen);
      },
      child: const Text(
        'View More',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
        ),
      ),
    );
  }
}
