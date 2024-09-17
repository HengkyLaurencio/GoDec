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
                PromocardList(title: 'Flat 40RB, untuk ongkir hingga 50RB', 
                valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Flat 20RB, untuk ongkir hingga 30RB', valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Sameday Flat 5RB, untuk ongkir hingga 15RB', valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Flat 40RB, untuk ongkir hingga 50RB', 
                valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Flat 20RB, untuk ongkir hingga 30RB', valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Sameday Flat 5RB, untuk ongkir hingga 15RB', valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Flat 40RB, untuk ongkir hingga 50RB', 
                valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Flat 20RB, untuk ongkir hingga 30RB', valid: 'Berlaku hingga 16 Sept, 2024',),
                PromocardList(title: 'Sameday Flat 5RB, untuk ongkir hingga 15RB', valid: 'Berlaku hingga 16 Sept, 2024',),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
