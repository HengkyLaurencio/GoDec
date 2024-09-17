import 'package:flutter/material.dart';

class WalletFeature extends StatefulWidget {
  final String title;
  final double height;
  final EdgeInsetsGeometry margin;
  final IconData icon;
  final VoidCallback onTap;
  final Color backgroundColor; 
  final Color textColor; 
  final Color iconColor; 
  

  const WalletFeature({
    super.key,
    required this.title,
    required this.height,
    required this.margin,
    required this.icon,
    required this.onTap,
    this.backgroundColor = const Color.fromARGB(255, 229, 227, 227), 
    this.textColor = Colors.black,
    this.iconColor = Colors.black, 
  });

  @override
  State<WalletFeature> createState() => _WalletFeatureState();
}

class _WalletFeatureState extends State<WalletFeature> {
  double _elevation = 0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _elevation = 8;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _elevation = 0;
    });
    widget.onTap();
  }

  void _onTapCancel() {
    setState(() {
      _elevation = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Material(
        elevation: _elevation,
        borderRadius: BorderRadius.circular(8),
        color: widget.backgroundColor, 
        child: Container(
          height: widget.height,
          margin: widget.margin,
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