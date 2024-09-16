import 'package:flutter/material.dart';
import 'package:godec/features/wallet/presentation/page/widget/transaction_item';

class TransactionHistory extends StatelessWidget {
  final int itemCount;

  const TransactionHistory({Key? key, this.itemCount = 10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Transaction History',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return TransactionItem(
              title: 'Transaction ${index + 1}',
              amount: 'Rp ${(index + 1) * 10000}',
              date:
                  '${DateTime.now().subtract(Duration(days: index)).day}/${DateTime.now().month}/${DateTime.now().year}',
              isCredit: index % 2 == 0,
            );
          },
        ),
      ],
    );
  }
}
