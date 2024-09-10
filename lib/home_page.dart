import 'package:flutter/material.dart';
import 'home_app_bar.dart';
import 'balance_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height *
              1, // Adjust height based on content
          child: Stack(
            children: [
              // Promo image box
              Positioned(
                top: 130 - 20, // Adjust overlap with AppBar
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  height: 170,
                  color: Colors.grey,
                  child: const Center(
                    child: Text(
                      'Promo Box',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              // AppBar
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: HomeAppBar(),
              ),
              // Balance Card
              const Positioned(
                top: 130 + 170 - 50,
                left: 16,
                right: 16,
                child: BalanceCard(), 
              ),
              // Scrollable Promo Cards
              Positioned(
                top: 130 + 170 + 40, // Position right below Balance card
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 120, // Fixed height for promo section
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        _buildPromoCard('Promo 1'),
                        const SizedBox(width: 16),
                        _buildPromoCard('Promo 2'),
                        const SizedBox(width: 16),
                        _buildPromoCard('Promo 3'),
                        const SizedBox(width: 16),
                        _buildPromoCard('Promo 4'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for promo card
  Widget _buildPromoCard(String title) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
