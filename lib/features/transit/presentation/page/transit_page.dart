import 'package:flutter/material.dart';
import 'package:godec/features/transit/presentation/widget/history_item.dart';
import 'package:godec/features/transit/presentation/widget/transport_card.dart';

class TransitPage extends StatelessWidget {
  const TransitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GoTransit"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar untuk memilih destinasi akhir
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

            // Public transport option
            const Text(
              "Public Transport Option",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Moda transportasi dalam bentuk grid card
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                TransportCard(
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
                TransportCard(
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
                TransportCard(
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
                TransportCard(
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
              ],
            ),
            const SizedBox(height: 20),

            // History perjalanan
            const Text(
              "Recent History",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Daftar history dalam bentuk list
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
