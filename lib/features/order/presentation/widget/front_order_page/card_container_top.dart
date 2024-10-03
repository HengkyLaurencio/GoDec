import 'package:flutter/material.dart';

class CardContainerTop extends StatelessWidget {
  const CardContainerTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
    );
  }
}
