import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:godec/core/widget/main_header.dart';
import 'package:godec/features/wallet/presentation/widget/balance_box.dart';
import 'package:godec/features/wallet/presentation/widget/wallet_feature.dart';
import 'package:godec/features/wallet/presentation/widget/transaction_item.dart';
import 'package:godec/features/wallet/presentation/widget/view_more_button.dart';
import 'package:godec/features/wallet/presentation/page/payment_page.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  String _scanBarcodeResult = '';

  void scanQR() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version';
    }

    if (!mounted) return;

    if (barcodeScanRes != '-1') {
      setState(() {
        _scanBarcodeResult = barcodeScanRes;
      });

      PaymentPage.scannedResult = _scanBarcodeResult;

      final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PaymentPage(),
        ),
      );

      if (result == true) {
        setState(() {
          _scanBarcodeResult = '';
        });
      }
    }
  }

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
                Positioned(
                  left: 22.0,
                  top: 250 - overlayHeight,
                  child: const BalanceBox(
                    title: 'Balance',
                    amount: '99.000',
                    points: '0',
                    colors: Color(0xFF23274D),
                    textcolor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Positioned(
                  right: 22.0,
                  top: 250 - overlayHeight,
                  child: const BalanceBox(
                    title: 'DecPay',
                    amount: '99.999.999.999',
                    points: '9999999',
                    colors: Color.fromARGB(255, 255, 255, 255),
                    textcolor: Color(0xFF23274D),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const WalletFeature(
                    title: 'Top-Up',
                    icon: Icons.add,
                    targetScreen: '/wallet/topup',
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textColor: Color(0xFF23274D),
                    iconColor: Color(0xFF23274D),
                  ),
                  const SizedBox(height: 15),
                  WalletFeature(
                    title: 'Scan To Pay',
                    icon: Icons.qr_code_scanner,
                    backgroundColor: const Color(0xFF23274D),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                    onTap: scanQR,
                  ),
                  const SizedBox(height: 15),
                  const WalletFeature(
                    title: 'Add Card',
                    icon: Icons.credit_card,
                    targetScreen: '/wallet/card',
                    backgroundColor: Color(0xFF23274D),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  const SizedBox(height: 50),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transaction History',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      TransactionItem(
                        title: 'Starbucks Coffee',
                        amount: '- Rp 50.000',
                        date: 'Sep 24, 2024',
                        isCredit: false,
                      ),
                      TransactionItem(
                        title: 'Freelance Payment',
                        amount: '+ Rp 200.000',
                        date: 'Sep 22, 2024',
                        isCredit: true,
                      ),
                      TransactionItem(
                        title: 'Grocery Store',
                        amount: '- Rp 45.000',
                        date: 'Sep 20, 2024',
                        isCredit: false,
                      ),
                      TransactionItem(
                        title: 'Starbucks Coffee',
                        amount: '- Rp 50.000',
                        date: 'Sep 24, 2024',
                        isCredit: false,
                      ),
                      TransactionItem(
                        title: 'Freelance Payment',
                        amount: '+ Rp 200.000',
                        date: 'Sep 22, 2024',
                        isCredit: true,
                      ),
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
