import 'package:flutter/material.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan Untuk Membayar')),
      body: const Center(child: Text('Scan to Pay Page')),
    );
  }
}
