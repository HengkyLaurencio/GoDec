import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class HistoryContainer extends StatelessWidget {
  final String text;
  final LatLng latLng;
  final VoidCallback onTap;

  const HistoryContainer({
    super.key,
    required this.text,
    required this.latLng,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width * 0.85;
    final sHeight = MediaQuery.of(context).size.height * 0.07;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: sHeight,
        width: sWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
