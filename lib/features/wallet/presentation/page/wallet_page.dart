import 'package:flutter/material.dart';
import 'package:godec/core/widget/main_header.dart';
import 'package:godec/features/wallet/presentation/widget/balance_box.dart';
import 'package:godec/features/wallet/presentation/widget/wallet_feature.dart';
import 'package:godec/features/wallet/presentation/widget/transaction_item.dart';
import 'package:godec/features/wallet/presentation/widget/view_more_button.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight * 0.25;
    final double overlayHeight = imageHeight / 2;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: MainHeader(title: 'Wallet'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
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
                Positioned(
                  left: 22.0,
                  top: 250 - overlayHeight,
                  child: const BalanceBox(
                    title: 'Balance',
                    amount: '99.000',
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
                    amount: '99.999.999.999',
                    points: '9999999',
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pinkAccent],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  WalletFeature(
                    title: 'Top-Up',
                    icon: Icons.add,
                    targetScreen: '/wallet/topup',
                    backgroundColor: Color.fromARGB(255, 223, 220, 220),
                    textColor: Color(0xFF23274D),
                    iconColor: Color(0xFF23274D),
                  ),
                  SizedBox(height: 15),
                  WalletFeature(
                    title: 'Scan To Pay',
                    icon: Icons.qr_code_scanner,
                    targetScreen: '/wallet/qr',
                    backgroundColor: Color(0xFF23274D),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  SizedBox(height: 15),
                  WalletFeature(
                    title: 'Add Card',
                    icon: Icons.credit_card,
                    targetScreen: '/wallet/card',
                    backgroundColor: Color(0xFF23274D),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transaction History',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      TransactionItem(
                        title: 'Starbucks Coffee',
                        amount: '- \$5.00',
                        date: 'Sep 24, 2024',
                        isCredit: false,
                      ),
                      TransactionItem(
                        title: 'Freelance Payment',
                        amount: '+ \$200.00',
                        date: 'Sep 22, 2024',
                        isCredit: true,
                      ),
                      TransactionItem(
                        title: 'Grocery Store',
                        amount: '- \$45.00',
                        date: 'Sep 20, 2024',
                        isCredit: false,
                      ),
                      SizedBox(height: 10),
                      TransactionItem(
                        title: 'Starbucks Coffee',
                        amount: '- \$5.00',
                        date: 'Sep 24, 2024',
                        isCredit: false,
                      ),
                      TransactionItem(
                        title: 'Freelance Payment',
                        amount: '+ \$200.00',
                        date: 'Sep 22, 2024',
                        isCredit: true,
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: ViewMoreButton(
                            targetScreen: "/wallet/transactions"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
