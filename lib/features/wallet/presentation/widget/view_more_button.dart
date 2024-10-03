import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewMoreButton extends StatelessWidget {
  final String targetScreen;

  const ViewMoreButton({
    super.key,
    required this.targetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: const Color(0xFF23274D).withOpacity(0.5),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.white),
        ),
        onPressed: () {
          context.push(targetScreen);
        },
        child: RichText(
          text: const TextSpan(
            text: 'View More',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color(0xFF23274D),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
