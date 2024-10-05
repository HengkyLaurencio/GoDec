import 'package:flutter/material.dart';

class PromoDesc extends StatelessWidget {
  const PromoDesc({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true, 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 250, 
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.grabon.in/gograbon/images/merchant/1700641825076.jpg'),
                          fit: BoxFit
                              .cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Discount 40% up to Rp100.000",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 0, top: 35, bottom: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Expanded(
                          child: Text(
                        'Kuota Pemakaian:',
                        textAlign: TextAlign.left,
                      )),
                      Expanded(
                          child: Text(
                        'Berlaku Hingga:',
                        textAlign: TextAlign.left,
                      )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        '2 Kali',
                        textAlign: TextAlign.left, 
                      )),
                      Expanded(
                          child: Text(
                        '25 Des 2025, 12.00 PM',
                        textAlign: TextAlign.left, 
                      )),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Nikmati promo untuk setiap pesanan GoDec dengan syarat dan ketentuan berikut:"),
                  SizedBox(height: 10),
                  Text (
                    "• Promo hanya berlaku selama periode promosi dan tidak dapat digunakan setelah masa berlaku habis."
                  ),
                  Text (
                    "• Promo berlaku untuk semua pengguna GoDec di wilayah tertentu (misalnya, Jakarta, Surabaya, Bandung)."
                  ),
                  Text(
                    "• Promo hanya berlaku untuk pengguna yang telah terdaftar dan memverifikasi akunnya."
                  ),
                  Text(
                    "• Promo ini tidak berlaku untuk pengguna baru atau pengguna dengan status akun yang belum aktif."
                  ),
                  Text(
                    "• Pengguna harus memasukkan kode promo sebelum melakukan pemesanan agar diskon atau penawaran berlaku."
                  ),
                  Text(
                    "• Kode promo hanya berlaku untuk layanan GoDec dan tidak berlaku untuk layanan aplikasi lain."
                  ),
                  Text(
                    "• Nilai diskon akan secara otomatis diterapkan setelah pengguna memasukkan kode promo yang valid."
                  ),
                  Text(
                    "• Promo ini hanya berlaku untuk layanan dengan rute tertentu atau untuk restoran/merchant yang berpartisipasi."
                  ),
                  
                  Text(
                    "• Promo ini hanya berlaku untuk layanan dengan rute tertentu atau untuk restoran/merchant yang berpartisipasi."
                  ),
                  
                  Text(
                    "• Jika ditemukan adanya penyalahgunaan promo, GoDec berhak menonaktifkan akun pengguna yang bersangkutan atau membatalkan penggunaan promo."
                  ),
                  Text(
                    "• Jika ditemukan adanya penyalahgunaan promo, GoDec berhak menonaktifkan akun pengguna yang bersangkutan atau membatalkan penggunaan promo."
                  ),
                  Text(
                    "• Jika ditemukan adanya penyalahgunaan promo, GoDec berhak menonaktifkan akun pengguna yang bersangkutan atau membatalkan penggunaan promo."
                  ),
                  
                  
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

