import 'package:flutter/material.dart';
import 'package:godec/features/transit/presentation/widget/history_item.dart';
import 'package:godec/features/transit/presentation/widget/transport_card.dart';

class TransitPage extends StatelessWidget {
  const TransitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("TransitDec"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search destination...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Public Transport Option",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TransportCard(
                    title: "KRL",
                    gradient: const LinearGradient(
                      colors: [Colors.red, Colors.pink],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    icon: Icons.train,
                    onTap: () {
                      // Aksi ketika KRL dipilih
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TransportCard(
                    title: "LRT",
                    gradient: const LinearGradient(
                      colors: [Colors.green, Colors.teal],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    icon: Icons.subway,
                    onTap: () {
                      // Aksi ketika LRT dipilih
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TransportCard(
                    title: "MRT",
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    icon: Icons.directions_transit,
                    onTap: () {
                      // Aksi ketika MRT dipilih
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TransportCard(
                    title: "TransJakarta",
                    gradient: const LinearGradient(
                      colors: [Colors.orange, Colors.amber],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    icon: Icons.directions_bus,
                    onTap: () {
                      // Aksi ketika TransJakarta dipilih
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Recent History",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Column(
              children: [
                HistoryItem(
                    from: "Sudirman", to: "Bogor", transportMode: "KRL"),
                HistoryItem(
                    from: "Dukuh Atas",
                    to: "Kelapa Gading",
                    transportMode: "LRT"),
                HistoryItem(
                    from: "Bundaran HI",
                    to: "Lebak Bulus",
                    transportMode: "MRT"),
                HistoryItem(
                    from: "Harmoni",
                    to: "Blok M",
                    transportMode: "TransJakarta"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
