import 'package:flutter/material.dart';
import 'package:godec/features/wallet/presentation/widget/transaction_item.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History',
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF23274D),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: const [
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
            TransactionItem(
              title: 'Grocery Store',
              amount: '- Rp 45.000',
              date: 'Sep 20, 2024',
              isCredit: false,
            )
          ],
        ),
      ),
    );
  }
}
