import 'package:flutter/material.dart';

class PromoCardSmall extends StatelessWidget {
  final String description;
  final IconData icon;
  final int color;
  final int fontColor;
  final Widget targetScreen; // Add the target screen

  const PromoCardSmall({
    super.key,
    required this.description,
    required this.icon,
    required this.color,
    required this.fontColor,
    required this.targetScreen, // Pass the target screen
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to the target screen when tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
      child: Card(
        elevation: 5,
        color: Color(color),
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
                color: Color(fontColor),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    color: Color(fontColor),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Icon(Icons.arrow_forward_ios, size: 20, color: Color(fontColor),),
            ],
          ),
        ),
      ),
    );
  }
}
