import 'package:flutter/material.dart';
import 'package:godec/features/home/presentation/widget/button_grid.dart';
import '../widget/home_app_bar.dart';
import '../widget/balance_card.dart';
import '../widget/promo_card.dart';
import '../widget/insurance_promo_card.dart'; // Import the InsurancePromoCard

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
                    top: 130 - 28,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: screenWidth,
                      height: 180,
                      color: Colors.grey,
                      child: const Center(
                        child: Image(
                          image: AssetImage('assets/promo_bluebird.jpg'),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
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

            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 15.0),
              child: ButtonGrid(),
            ),

            const SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    PromoCard(
                        imageUrl:
                            'https://www.dsf.my/wp-content/uploads/2021/08/Airsia-e-hailing.png?v=1629939630'),
                    SizedBox(width: 16),
                    PromoCard(
                        imageUrl:
                            'https://cdn.grabon.in/gograbon/images/merchant/1700641825076.jpg'),
                    SizedBox(width: 16),
                    PromoCard(
                        imageUrl:
                            'https://bluebirdgroup.com/storage/promotion/66fb6b796f4a8.jpg'),
                    SizedBox(width: 16),
                    PromoCard(
                        imageUrl:
                            'https://viuit.id/wp-content/uploads/2023/03/Sticky-Promo-1-1024x569.png'),
                  ],
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: InsurancePromoCard(),
            ),
          ],
        ),
      ),
    );
  }
}
