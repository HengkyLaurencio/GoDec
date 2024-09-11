import 'package:flutter/material.dart';

class PromoCardSmall extends StatelessWidget {
  final String description;
  final IconData icon;

  const PromoCardSmall(
      {super.key, required this.description, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const SizedBox(width: 12),
            Icon(
              icon, 
              size: 24.0,
              color: Colors.black,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 14),
            const Icon(Icons.arrow_forward_ios, size: 20),
          ],
        ),
      ),
    );
  }
}
