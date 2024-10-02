import 'package:flutter/material.dart';

class TransportCard extends StatelessWidget {
  final String title;
  final LinearGradient gradient;
  final IconData icon;
  final VoidCallback onTap;

  const TransportCard({
    super.key,
    required this.title,
    required this.gradient,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 65, // Menyesuaikan ukuran container
            height: 65,
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 30, // Mengurangi ukuran ikon
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 1, // Batasi teks menjadi 1 baris
            overflow: TextOverflow
                .ellipsis, // Tampilkan elipsis jika teks terlalu panjang
            style: const TextStyle(
              fontSize: 12, // Mengurangi ukuran teks
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Mengatur teks di tengah
          ),
        ],
      ),
    );
  }
}
