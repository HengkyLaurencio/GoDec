import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Icon(
          Icons.arrow_back,
          size: 20,
        ),
      ),
    );
  }
}
