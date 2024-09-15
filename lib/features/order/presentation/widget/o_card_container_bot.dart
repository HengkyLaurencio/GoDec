import 'package:flutter/material.dart';

class OCardContainerBot extends StatelessWidget {
  const OCardContainerBot({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height * 0.125;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: screenWidth,
      height: screenHeight + 11,
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: screenWidth * 0.35,
                height: screenHeight * 0.25,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSurface,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Column(
                children: [
                  Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                        width: 1, 
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: screenWidth * 0.55,
                    height: screenHeight * 0.35,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurface,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
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
