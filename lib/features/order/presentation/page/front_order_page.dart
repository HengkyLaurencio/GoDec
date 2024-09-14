import 'package:flutter/material.dart';
import '../widget/arrow_back.dart';
import '../widget/card_container_top.dart';
import '../widget/card_container_stack.dart';
import '../widget/card_container_bot.dart';

class FrontOrderPage extends StatelessWidget {
  const FrontOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 440,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: screenWidth,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 35,
                    left: 6,
                    child: ArrowBack(),
                  ),
                  const Positioned(
                    top: 75,
                    left: 20,
                    right: 20,
                    child: CardContainerTop(),
                  ),
                  const Positioned(
                    top: 75,
                    left: 20,
                    right: 20,
                    child: CardContainerStack(),
                  ),
                ],
              ),
            ),
            const CardContainerBot(),
          ],
        ),
      ),
    );
  }
}
