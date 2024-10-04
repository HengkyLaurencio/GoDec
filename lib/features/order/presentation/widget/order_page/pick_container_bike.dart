import 'package:flutter/material.dart';

class PickContainerBike extends StatelessWidget {
  final double pricePerKmBike;

  const PickContainerBike({super.key, required this.pricePerKmBike});

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width * 0.85 - 40;
    final sHeight = MediaQuery.of(context).size.height * 0.075 - 10;

    return Center(
      child: Container(
        height: sHeight,
        width: sWidth,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.two_wheeler,
              size: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'BikeDec',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Text(
              'Rp ${pricePerKmBike.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
