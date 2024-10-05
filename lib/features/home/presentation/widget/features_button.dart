import 'package:flutter/material.dart';

class FeaturesButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const FeaturesButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 1, // Batasi teks menjadi 1 baris
            overflow: TextOverflow
                .ellipsis, // Tampilkan elipsis jika teks terlalu panjang
            style: const TextStyle(
              fontSize: 12, // Ukuran teks
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Mengatur teks di tengah
          ),
        ],
      ),
    );
  }
}

Widget createFeaturesButton({
  required String title,
  required IconData icon,
  required VoidCallback onTap,
}) {
  return FeaturesButton(
    title: title,
    icon: icon,
    onTap: onTap,
  );
}
