import 'package:flutter/material.dart';

class PickContainer extends StatelessWidget {
  const PickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width * 0.85 - 40;
    final sHeight = MediaQuery.of(context).size.height * 0.075 - 10;

    return Center(
      child: Container(
        height: sHeight,
        width: sWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
