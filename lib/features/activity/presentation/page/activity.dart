import 'package:flutter/material.dart';
import 'package:godec/core/widget/main_header.dart';

class WhiteScreen extends StatelessWidget {
  const WhiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: MainHeader(title: 'Activity'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/569/492/HD-wallpaper-dark-color-gradient.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildHistoryCard(
              location: 'Jakarta, Indonesia',
              price: 'Rp 100.000',
            ),
            const SizedBox(height: 20),
            _buildHistoryCard(
              location: 'Bandung, Indonesia',
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
              Container(
                width: 83,
                height: 83,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
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
                            'Order Again',
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
