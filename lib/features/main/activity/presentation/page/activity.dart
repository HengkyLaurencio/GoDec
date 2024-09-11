import 'package:flutter/material.dart';

class WhiteScreen extends StatelessWidget {
  const WhiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Activity',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xFF23274D),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16),
                    child: Text(
                      'Kumpulan Promo Yang Ada',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
            const SizedBox(height: 20),
            _buildHistoryCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kotak Dummy Icon
              Container(
                width: 83,
                height: 83,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 16),

              // Informasi Lokasi dan Harga
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi Terakhir',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Rp 50.000',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              // Tombol Pesan Lagi
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF23274D),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Pesan Lagi'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
