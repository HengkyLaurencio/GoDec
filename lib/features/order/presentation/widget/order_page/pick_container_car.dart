import 'package:flutter/material.dart';

class PickContainerCar extends StatelessWidget {
  final double pricePerKmCar;
  final bool isSelected;
  final VoidCallback onSelect;

  const PickContainerCar({
    super.key,
    required this.pricePerKmCar,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width * 0.85 - 40;
    final sHeight = MediaQuery.of(context).size.height * 0.075 - 10;

    return GestureDetector(
      onTap: onSelect,
      child: Container(
        height: sHeight,
        width: sWidth,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
          border: isSelected
              ? Border.all(color: Colors.blue, width: 3)
              : Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.directions_car,
              size: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'CarDec',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Text(
              'Rp ${pricePerKmCar.toStringAsFixed(0)}',
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
