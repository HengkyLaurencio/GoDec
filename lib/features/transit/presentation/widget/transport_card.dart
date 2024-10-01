import 'package:flutter/material.dart';

class TransportCard extends StatelessWidget {
  final String title;
  final LinearGradient gradient;
  final IconData icon;
  final VoidCallback onTap;

  const TransportCard({
    Key? key,
    required this.title,
    required this.gradient,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius:
              BorderRadius.circular(30), // Mengubah sudut menjadi melengkung
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20, horizontal: 16), // Menambah padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 70, // Menyesuaikan ukuran ikon
                color: Colors.white,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20, // Menyesuaikan ukuran teks
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
