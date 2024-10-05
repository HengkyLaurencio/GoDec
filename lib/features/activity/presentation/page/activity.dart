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
              title: 'Monumen Nasional Indonesia',
              location: 'Merdeka Square, Jalan Lapangan Monas, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta.',
              price: 'Rp 19.885',
            ),
            const SizedBox(height: 20),
            const HistoryCard(
              title: 'Taman Mini Indonesia',
              location: 'Jl. Taman Mini Indonesia Indah, Ceger, Kec. Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta.',
              price: 'Rp 158.066',
            ),
            const SizedBox(height: 20),
            const HistoryCard(
              title: 'Stadion Utama Gelora Bung Karno',
              location: 'Jl. Pintu Satu Senayan, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta',
              price: 'Rp 27.970',
            ),
            const SizedBox(height: 20),
            const HistoryCard(
              title: 'Bandara Internasional Soekarno Hatta',
              location: 'Pajang, Kota Tangerang, Banten',
              price: 'Rp 134.275',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
