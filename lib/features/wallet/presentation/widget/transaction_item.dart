import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final String amount;
  final String date;
  final bool isCredit;

  const TransactionItem({
    super.key,
    required this.title,
    required this.amount,
    required this.date,
    required this.isCredit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
        trailing: Text(
          amount,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: isCredit ? Colors.green : Colors.red,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: isCredit ? Colors.green : Colors.red,
          child: Icon(
            isCredit ? Icons.add : Icons.remove,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
