import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String imageUrl;

  const PromoCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12), // Ensure the image is clipped to the card shape
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover, 
          width: double.infinity,
          height: double.infinity,
          errorBuilder: (context, error, stackTrace) {
            return const Center(child: Text('Image not found', style: TextStyle(color: Colors.white)));
          },
        ),
      ),
    );
  }
}
