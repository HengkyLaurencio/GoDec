import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4, // 4 buttons per row
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      shrinkWrap: true, // Avoid scrolling inside the grid
      physics:
          const NeverScrollableScrollPhysics(), // Prevents internal scrolling
      children: List.generate(8, (index) {
        return ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Button ${index + 1}',
            style: const TextStyle(color: Colors.white),
          ),
        );
      }),
    );
  }
}
