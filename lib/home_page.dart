import 'package:flutter/material.dart';
import 'package:godec/button_grid.dart';
import 'home_app_bar.dart';
import 'balance_card.dart';
import 'promo_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Stack untuk AppBar, Promo Box, dan Balance Card
            SizedBox(
              height: 330,
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
                ],
              ),
            ),

            const SizedBox(
              height: 120, // Fixed height for promo section
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    PromoCard(title: 'Promo 1'),
                    SizedBox(width: 16),
                    PromoCard(title: 'Promo 1'),
                    SizedBox(width: 16),
                    PromoCard(title: 'Promo 1'),
                    SizedBox(width: 16),
                    PromoCard(title: 'Promo 1'),
                  ],
                ),
              ),
            ),

            // Buttons Grid 4x2 (diluar Stack)
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: ButtonGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
