import 'package:flutter/material.dart';
import 'package:godec/features/insurance/widget/insurancelist.dart';

class Insurance extends StatelessWidget {
  const Insurance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Insurance'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Insurance Plans',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('My Insurance Plans',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 40, left: 10),
                child: CardList(
                  targetScreen: 'promo/desc',
                  title: 'Dukungan Perjalanan',
                  description:
                      'Rp 1.000 / perjalanan',
                ),
              ),


              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 10, left: 16),
                child: CardList(
                  targetScreen: 'promo/desc',
                  title: 'Asuransi Perjalanan',
                  description:
                      'Mulai dari Rp 2.850 / hari',
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 10, left: 16),
                child: CardList(
                  targetScreen: 'promo/desc',
                  title: 'Motopro',
                  description:
                      'Lindungi motormu dari resiko kehilangan',

                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 10, left: 16),
                child: CardList(
                  targetScreen: 'promo/desc',
                  title: 'Autocillin',
                  description:
                      'Tetap aman dan terlindungi setiap saatnya',
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 10, left: 16),
                child: CardList(
                  targetScreen: 'promo/desc',
                  title: 'Kecelakaan Diri',
                  description:
                      'Jaminan perlindungan untukmu setiap saat',
                ),
              ),

              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
