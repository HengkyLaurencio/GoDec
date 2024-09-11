import 'package:flutter/material.dart';
import 'package:godec/features/main/promo/presentation/widget/promocard.dart';
import 'package:godec/features/main/promo/presentation/widget/promocard_small.dart';
import 'package:godec/features/main/promo/presentation/widget/promomenu.dart';

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
          child: Opacity(
            opacity: 0.9, // Menyesuaikan transparansi gambar
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover, // Mengisi seluruh area
            ),
          ),
        ),
        // Layer untuk konten di atas gambar
        SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
          child: Container(
            padding: const EdgeInsets.only(bottom: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40.0),
                // Tambahkan padding khusus untuk 'Promos'
                const Padding(
                  padding: EdgeInsets.only(left: 16), // Padding left untuk 'Promos'
                  child: Row(
                    children: [
                      Text(
                        'Promos',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 220,
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
                        title: '186',
                        description: 'Vouchers & packs',
                      ),
                      PromoCardSmall(
                        description: 'Got a promo code? Enter here',
                        icon: Icons.percent,
                      ),
                      PromoCardSmall(
                        description: 'Invite and Earn',
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
                        padding:
                            EdgeInsets.only(right: 10, bottom: 10, left: 16),
                        child: CardList(
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
                        padding:
                            EdgeInsets.only(right: 10, bottom: 10, left: 16),
                        child: CardList(
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
