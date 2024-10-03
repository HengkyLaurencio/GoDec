import 'package:flutter/material.dart';

class DistanceDisplay extends StatelessWidget {
  final double distanceInMeters;

  const DistanceDisplay({Key? key, required this.distanceInMeters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 20,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Distance: ${(distanceInMeters / 1000).toStringAsFixed(2)} km',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
