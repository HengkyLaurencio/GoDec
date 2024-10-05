import 'package:flutter/material.dart';
import 'package:godec/core/widget/main_header.dart';
import 'package:godec/features/activity/presentation/widget/historycard.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: MainHeader(title: 'Activity'),
      ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            SizedBox(height: 45),
            HistoryCard(
              title: 'Monumen Nasional Indonesia',
              location: 'Merdeka Square, Jalan Lapangan Monas, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta.',
              price: 'Rp 19.885',
            ),
            SizedBox(height: 20),
            HistoryCard(
              title: 'Taman Mini Indonesia',
              location: 'Jl. Taman Mini Indonesia Indah, Ceger, Kec. Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta.',
              price: 'Rp 158.066',
            ),
            SizedBox(height: 20),
            HistoryCard(
              title: 'Stadion Utama Gelora Bung Karno',
              location: 'Jl. Pintu Satu Senayan, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta',
              price: 'Rp 27.970',
            ),
            SizedBox(height: 20),
            HistoryCard(
              title: 'Bandara Internasional Soekarno Hatta',
              location: 'Pajang, Kota Tangerang, Banten',
              price: 'Rp 134.275',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
