import 'package:flutter/material.dart';
import 'package:godec/features/wallet/presentation/page/widget/balance_box.dart';
import 'package:godec/features/wallet/presentation/page/widget/wallet_feature.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight * 0.25;
    final double overlayHeight = imageHeight / 2;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.grey.shade800,
                margin: const EdgeInsets.only(bottom: 50),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyUMebEcDUYneB8Y4J1-WWuXeb9qEUHMvQiA&s'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      right: 20.0, left: 20.0, top: 20.0, bottom: 0.0),
                  child: Column(
                    children: [
                      WalletFeature(
                          title: 'Top-Up',
                          height: 60,
                          margin: EdgeInsets.only(top: 0.0),
                          icon: Icons.add),
                      SizedBox(height: 10),
                      WalletFeature(
                        title: 'Tambahkan Kartu',
                        height: 130,
                        margin: EdgeInsets.only(top: 0.0),
                        icon: Icons.credit_card,
                      ),
                      SizedBox(height: 16),
                      WalletFeature(
                        title: 'Scan Untuk Membayar',
                        height: 80,
                        margin: EdgeInsets.only(top: 0),
                        icon: Icons.qr_code_scanner,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 22.0,
            top: 250 - overlayHeight,
            child: const BalanceBox(
              title: 'Balance',
              amount: '50.000',
              points: '0',
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 68, 170, 254),
                  Color.fromARGB(255, 105, 179, 214)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            right: 22.0,
            top: 250 - overlayHeight,
            child: const BalanceBox(
              title: 'DecPay',
              amount: '1.000.000',
              points: '2040',
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pinkAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.person, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
