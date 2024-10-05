import 'package:flutter/material.dart';
import 'package:godec/features/promo/presentation/widget/promocard_list.dart';

class PromoList extends StatelessWidget {
  const PromoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vouchers & packs'),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Column(
              children: [
                PromocardList(
                  title: 'Flat 40RB, untuk ongkir hingga 50RB',
                  valid: 'Berlaku hingga 16 Sept, 2024',
                  imageUrl:
                      'https://www.jtarp.com/wp-content/uploads/2022/02/The-Best-Pizza-Slices-Promo-Banner-2x3-1-2048x1365.jpg',
                ),PromocardList(
                  title: 'POTONGAN! Rp.10.000 GoDec Untuk Pembelian Burger',
                  valid: 'Berlaku hingga 24 Okt, 2024',
                  imageUrl:
                      'https://barburger.id/wp-content/uploads/2020/10/Design-website-barburger-Gocap.jpg',
                ),
                PromocardList(
                  title: 'Diskon 50% untuk pembelian pertama',
                  valid: 'Berlaku hingga 24 Okt, 2024',
                  imageUrl:
                      'https://cdn.create.vista.com/downloads/117375ef-d28b-4609-818a-c29cc15741d4_1024.jpeg',
                ),PromocardList(
                  title: ' POTONGAN! Rp.10.000 GoDec Untuk Pembelian Burger',
                  valid: 'Berlaku hingga 24 Okt, 2024',
                  imageUrl:
                      'https://barburger.id/wp-content/uploads/2020/10/Design-website-barburger-Gocap.jpg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}