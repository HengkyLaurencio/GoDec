import 'package:flutter/material.dart';

class CardContainerBot extends StatelessWidget {
  const CardContainerBot({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      width: screenWidth,
      height: 230,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(30),
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
