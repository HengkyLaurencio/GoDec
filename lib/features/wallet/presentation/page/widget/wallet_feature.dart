import 'package:flutter/material.dart';

class WalletFeature extends StatefulWidget {
  final String title;
  final double height;
  final EdgeInsetsGeometry margin;
  final IconData icon;

  const WalletFeature({
    Key? key,
    required this.title,
    required this.height,
    required this.margin,
    required this.icon,
  }) : super(key: key);

  @override
  _WalletFeatureState createState() => _WalletFeatureState();
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
        color: const Color.fromARGB(255, 229, 227, 227),
        child: Container(
          height: widget.height,
          margin: widget.margin,
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(widget.icon, size: 30),
              const SizedBox(width: 16),
              Text(
                widget.title,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
