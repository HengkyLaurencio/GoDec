import 'package:flutter/material.dart';

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width * 0.85;
    final sHeigth = MediaQuery.of(context).size.height * 0.075;
    return Container(
      height: sHeigth,
      width: sWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(15),
      ),
    );
    ;
  }
}
