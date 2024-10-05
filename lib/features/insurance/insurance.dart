import 'package:flutter/material.dart';
import 'package:godec/features/insurance/widget/insurancelist.dart';

class Insurance extends StatelessWidget {
  const Insurance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Insurance', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF23274D),
        iconTheme: const IconThemeData(
        color: Colors.white)
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Insurance Plans',
                          style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('My Insurance Plans',
                        style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 40, top: 20, left: 10),
                child: CardList(
                  targetScreen: '/insurance/detail',
                  title: 'Dukungan Perjalanan',
                  description:
                      'Rp 1.000 / perjalanan',
                  image: 'https://assets.grab.com/wp-content/uploads/sites/9/2022/03/21161911/Landing-page-1200x630-1.jpg',
                ),
              ),


              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 20, left: 10),
                child: CardList(
                  targetScreen: '/insurance/detail2',
                  title: 'Asuransi Perjalanan',
                  description:
                      'Mulai dari Rp 2.850 / hari',
                  image: 'https://www.blibli.com/friends-backend/wp-content/uploads/2023/02/B100492-cover-1.jpg',
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 20, left: 10),
                child: CardList(
                  targetScreen: '/insurance/detail3',
                  title: 'Motopro',
                  description:
                      'Lindungi motormu dari resiko kehilangan',
                  image: 'https://cdn.infobrand.id/images/img/posts/2020/11/05/baf-luncurkan-3-perlindungan-dalam-1-pembiayaan-motor-yamaha.jpeg',

                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 20, left: 10),
                child: CardList(
                  targetScreen: '/insurance/detail4',
                  title: 'Autocillin',
                  description:
                      'Tetap aman dan terlindungi setiap saatnya',
                  image: 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/krjogja/news/2023/05/31/507423/mengenal-lebih-jauh-asuransi-dwiguna-perlindungan-komprehensif-untuk-masa-depan-2305315.jpg',
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.only(right: 10, bottom: 20, left: 10),
                child: CardList(
                  targetScreen: '/insurance/detail5',
                  title: 'Kecelakaan Diri',
                  description:
                      'Jaminan perlindungan untukmu setiap saat',
                  image: 'https://www.gardaoto.com/wp-content/uploads/2020/09/Socmed-Garda-oto-05.jpg',
                ),
              ),

              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
