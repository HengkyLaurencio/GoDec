import 'package:flutter/material.dart';

class InsuranceDetail4 extends StatelessWidget {
  const InsuranceDetail4 ({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
                      width: screenWidth,
                      color: Colors.grey,
                      child: const Padding(
                        padding:
                            EdgeInsets.only(left: 20, bottom: 20, top: 190),
                        child: Text(
                          "Dukungan Perjalanan",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
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
                "Discount 40% + Cashback Rp500.000",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Dapatkan asuransi kecelakaan diri untuk perjalananmu, dan voucher GoDec kalau kamu telat dijemput."),
                  SizedBox(height: 10),
                  Text("Paket Basic:"),
                  Text(
                      "• Voucher Grab Jika terlambat dijemput sebanyak Rp 1.000."),
                  Text("• Asuransi kecelakaan diri sebanyak Rp 1.000."),
                  Text("• Biaya medis tak terduga sebanyak Rp 1.000."),
                  SizedBox(height: 20),
                  Text("Paket Plus:"),
                  Text(
                      "•Voucher Grab Jika terlambat dijemput sebanyak Rp 2.000."),
                  Text("• Asuransi kecelakaan diri sebanyak Rp 2.000."),
                  Text("• Biaya medis tak terduga sebanyak Rp 2.000."),
                  SizedBox(height: 20),
                  Text("Voucher karena terlambat dijemput."),
                  SizedBox(height: 10),
                  Text(
                      "Jika kamu terlambat dijemput lebih dari 15 menit setelah estimasi waktu tiba, kamu berhak mendapatkan voucer pelayanan GoDec."),
                  SizedBox(height: 10),
                  Text("• Perjalanan Motor Rp 5.000 - Rp 5.500."),
                  Text("• Perjalanan Mobil Rp 10.000 - Rp 11.000."),
                  SizedBox(height: 5),
                  Text("---------------------"),
                  Text(
                      "GRATIS ASURANSI KECELAKAAN SELAMA 24JAM SETELAH PERJALANAN."),
                  SizedBox(height: 15),
                  Text(
                      "Dapatkan perlindungan kecelakaan diri selama 24jam setelah perjalanan selesai. "
                      "Jika kamu menyelesaikan perjalanan Godec pada pukul 14.00 hari ini, kamu akan dilindungi selama 24 jam setelahnya. "
                      "Jika terjadi kecelakaan selama periode ini, cth. patah tulang akibat terjatuh dari tangga, kamu bisa mengajukan klaim. "
                      "Perlindungan hanya berlaku untuk pengguna Ride Cover dan nggak berlaku untuk penumpang lainnya."),
                  SizedBox(height: 20),
                  Text("Kematian atau cacat permanen\n"
                      "• Klaim hingga Rp 50.000.000 (Hanya yang berlangganan)."),
                  Text("Penggantian baiaya medis tak terduga\n"
                      "• Klaim hingga Rp 2.750.000 (Hanya yang berlangganan)."),
                  SizedBox(height: 10),
                  Text("---------------------"),
                  SizedBox(height: 10),
                  Text("Tanya Jawab"),
                  SizedBox(height: 20),
                  Text("Apa itu Ride Cover Plus?"),
                  SizedBox(height: 15),
                  Text("Ride Cover Plus adalah program yang terdiri dari:\n"
                      "Voucher Keterlambatan Penjemputan atau Voucher Pembatalan Keterlambatan yang disesiakan untuk Anda oleh Dec Companny Indonesia."
                      "saat Anda melakukan perjalanan yang memenuhi syarat dengan GoDec di Indonesia.\n\n"
                      "Produk asuransi Kecelakaan Diri gratis selama perjalanan dan perpanjangan perlindungan selama 24 jam setelah perjalanan berakhir"
                      "yang disediakan yang ditanggung oleh PT Chubb Insurance Indonesia ('Chuub')"),
                  SizedBox(height: 100),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    backgroundColor: const Color(0xFF23274D),
                  ),
                  child: const Text(
                    'Use This Insurance',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
