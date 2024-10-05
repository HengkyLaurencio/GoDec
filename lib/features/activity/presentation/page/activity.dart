import 'package:flutter/material.dart';
import 'package:godec/core/widget/main_header.dart';
import 'package:godec/features/activity/presentation/widget/historycard.dart';
import 'package:go_router/go_router.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: MainHeader(title: 'Activity'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: () {
                  context.push('/promo');
                },
                child: Container(
                  width: screenWidth,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xFF23274D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Promos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const HistoryCard(
              location: 'Jakarta, Indonesia',
              price: 'Rp 100.000',
            ),
            const SizedBox(height: 20),
            const HistoryCard(
              location: 'Bandung, Indonesia',
              price: 'Rp 75.000',
            ),
            const SizedBox(height: 20),
            const HistoryCard(
              location: 'Bandung, Indonesia',
              price: 'Rp 75.000',
            ),
            const SizedBox(height: 20),
            const HistoryCard(
              location: 'Surabaya, Indonesia',
              price: 'Rp 90.000',
            ),
            const SizedBox(height: 20),
            const HistoryCard(
              location: 'Yogyakarta, Indonesia',
              price: 'Rp 120.000',
            ),
          ],
        ),
      ),
    );
  }
}
