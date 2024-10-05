// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CardContainerRide extends StatefulWidget {
  const CardContainerRide({super.key});

  @override
  _CardContainerRideState createState() => _CardContainerRideState();
}

class _CardContainerRideState extends State<CardContainerRide> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height * 0.125;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: screenWidth,
      height: screenHeight * 0.7,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bovilius Meidi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'B 2024 DEC',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.green, size: 30),
                SizedBox(width: 20),
                Icon(Icons.chat, color: Colors.blue, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
