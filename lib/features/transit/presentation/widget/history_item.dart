import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  final String from;
  final String to;
  final String transportMode;

  const HistoryItem({
    Key? key,
    required this.from,
    required this.to,
    required this.transportMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.history, color: Colors.grey),
      title: Text("$from -> $to"),
      subtitle: Text("Transport: $transportMode"),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
