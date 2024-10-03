import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WalletFeature extends StatefulWidget {
  final String title;
  final double height;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final String? targetScreen;
  final VoidCallback? onTap;

  const WalletFeature({
    super.key,
    required this.title,
    this.height = 60,
    required this.icon,
    this.backgroundColor = const Color.fromARGB(255, 229, 227, 227),
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
    this.targetScreen,
    this.onTap,
  });

  @override
  State<WalletFeature> createState() => _WalletFeatureState();
}

class _WalletFeatureState extends State<WalletFeature> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(8),
      shadowColor: const Color(0xFF23274D).withOpacity(1),
      color: widget.backgroundColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          if (widget.onTap != null) {
            widget.onTap!();
          } else if (widget.targetScreen != null) {
            context.push(widget.targetScreen!);
          }
        },
        child: Container(
          height: widget.height,
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(widget.icon, size: 30, color: widget.iconColor),
              const SizedBox(width: 16),
              Text(
                widget.title,
                style: TextStyle(fontSize: 18, color: widget.textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
