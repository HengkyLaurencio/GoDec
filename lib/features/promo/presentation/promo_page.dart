import 'package:flutter/material.dart';
import 'package:godec/features/promo/presentation/promo_code.dart';
import 'package:godec/features/promo/presentation/promo_list.dart';
import 'package:godec/features/promo/presentation/widget/promocard.dart';
import 'package:godec/features/promo/presentation/widget/promocard_small.dart';
import 'package:godec/features/promo/presentation/widget/promomenu.dart';
import 'package:godec/features/promo/presentation/promo_desc.dart';

class PromoPage extends StatelessWidget {
  final String imageUrl =
      'https://htmlcolorcodes.com/assets/images/colors/dark-gray-color-solid-background-1920x1080.png';

  const PromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Layer untuk gambar di belakang
          Positioned(
            bottom: 400,
            top: 200,
            right: 0,
            left: 0,
            child: Opacity(
              opacity: 0.9, // Menyesuaikan transparansi gambar
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill, // Mengisi seluruh area
              ),
            ),
          ),
          // Layer untuk konten di atas gambar
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    padding: const EdgeInsets.only(left: 23, right: 20, top: 20, bottom: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey, 
                          width: 1.0, 
                        ),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promos',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.person_rounded, size: 40),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: const Column(
                      children: [
                        PromoCard(
                          targetScreen: PromoList(),
                          title: '186',
                          description: 'Vouchers & packs',
                        ),
                        PromoCardSmall(
                          targetScreen: PromoForm(),
                          description: 'Got a promo code? Enter here',
                          icon: Icons.percent,
                          color: 0xFFFFFFFF,
                          fontColor: 0xFF000000,
                        ),
                        PromoCardSmall(
                          targetScreen: PromoForm(),
                          description: 'Invite and Earn',
                          color: 0xFF23274D,
                          fontColor: 0xFFFFFFFF,
                          icon: Icons.person,
                        ),
                        SizedBox(height: 38),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 225,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(
                              right: 10, bottom: 10, left: 16),
                          child: CardList(
                            targetScreen: PromoDesc(),
                            title: 'OTW dari & ke bandara hemat banget!',
                            description: 'Kode GOBANDARA diskon s.d. 300RB',
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 235,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(
                              right: 10, bottom: 10, left: 16),
                          child: CardList(
                            targetScreen: PromoDesc(),
                            title: 'Promo GoDec tiap weekend!',
                            description:
                                'Pasti diskon s.d. 30RB ke mana pun. Klik\nuntuk dapetin promonya!',
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
