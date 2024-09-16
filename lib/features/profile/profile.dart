import 'package:flutter/material.dart';
import 'package:godec/features/profile/widget/history_card.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian atas biru
            Container(
              width: screenWidth,
              height: screenHeight * 0.25, // 1/4 tinggi layar
              color: const Color(0xFF23274D),
              child: const Padding(
                padding: EdgeInsets.only(left: 35),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'HI! User',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Transform.translate(
                offset: const Offset(0, -50),
                child: Container(
                  width: screenWidth,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Username',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Email User',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Contact User',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const Divider(
              thickness: 1,
              color: Colors.black, 
              indent: 25, 
              endIndent: 25, 
            ),

            const SizedBox(height: 20),
            const HistoryCard(
              tulisan: 'Promos',
            ),

            const SizedBox(height: 20),
            const HistoryCard(
              tulisan: 'Promos',
            ),

          ],
        ),
      ),
    );
  }
}
