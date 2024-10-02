import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewMoreButton extends StatelessWidget {
  final String targetScreen;
  final double borderRadius;

  const ViewMoreButton({
    super.key,
    required this.targetScreen,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      onPressed: () {
        context.push(targetScreen);
      },
      child: const Text(
        'View More',
        style: TextStyle(
          color: Color(0xFF23274D),
          fontSize: 16,
        ),
      ),
    );
  }
}
