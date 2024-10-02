import 'package:flutter/material.dart';
import 'package:godec/features/wallet/presentation/widget/transaction_item.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: ListView(
        children: const [
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
        ],
      ),
    );
  }
}
