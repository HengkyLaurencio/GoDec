import 'package:flutter/material.dart';

class BalanceBox extends StatelessWidget {
  final String title;
  final String amount;
  final String points;
  final Color colors;
  final Color textcolor;

  const BalanceBox(
      {super.key,
      required this.title,
      required this.amount,
      required this.points,
      required this.colors,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double boxWidth = screenWidth / 2.3;

    return Container(
      width: boxWidth,
      height: boxWidth * 0.95,
      padding: EdgeInsets.all(screenWidth * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.04),
        color: colors,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: screenWidth * 0.025,
            offset: Offset(0, screenWidth * 0.0125),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: textcolor,
              fontSize: screenWidth * 0.045,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'Rp$amount',
                  style: TextStyle(
                    color: textcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.monetization_on,
                color: textcolor,
                size: screenWidth * 0.04,
              ),
              SizedBox(width: screenWidth * 0.01),
              Text(
                '$points Points',
                style: TextStyle(
                  color: textcolor,
                  fontSize: screenWidth * 0.03,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
