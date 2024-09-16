import 'package:flutter/material.dart';

class WhiteScreen extends StatelessWidget {
  const WhiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
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
                width: screenWidth,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xFF23274D),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Promos',
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
            _buildHistoryCard(
              location: 'Jakarta, Indonesia',
              price: 'Rp 100.000',
            ),
            const SizedBox(height: 20),
            _buildHistoryCard(
              location:
                  'Bandung, Indonesia',
              price: 'Rp 75.000',
            ),
            const SizedBox(height: 20),
            _buildHistoryCard(
              location: 'Bandung, Indonesia',
              price: 'Rp 75.000',
            ),
            const SizedBox(height: 20),
            _buildHistoryCard(
              location: 'Surabaya, Indonesia',
              price: 'Rp 90.000',
            ),
            const SizedBox(height: 20),
            _buildHistoryCard(
              location: 'Yogyakarta, Indonesia',
              price: 'Rp 120.000',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryCard({required String location, required String price}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 140,
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

              // Informasi Lokasi, Harga, dan Tombol Pesan Lagi
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Lokasi Tujuan (1/2 Baris)
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2, // Bisa 1 atau 2 baris
                      overflow:
                          TextOverflow.ellipsis, // Overflow pada teks panjang
                    ),

                    // Harga dan Tombol Pesan Lagi
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            backgroundColor: const Color(0xFF23274D),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(80, 32),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Pesan Lagi',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}