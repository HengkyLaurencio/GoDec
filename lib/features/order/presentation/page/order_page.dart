import 'package:flutter/material.dart';
import '../widget/arrow_back.dart';
import '../widget/check_container.dart';
import '../widget/o_card_container_stack.dart';
import '../widget/o_card_container_top.dart';
import '../widget/o_card_container_bot.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final mHeight = MediaQuery.of(context).size.height * 0.725;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: screenWidth,
                          height: mHeight,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 45,
                        left: 20,
                        child: ArrowBack(),
                      ),
                      const Positioned(
                        top: 90,
                        left: 20,
                        right: 20,
                        child: CheckContainer(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 85,
            left: 20,
            right: 20,
            child: OCardContainerTop(),
          ),
          const Positioned(
            bottom: 80,
            left: 30,
            right: 30,
            child: OCardContainerStack(),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: OCardContainerBot(),
          ),
        ],
      ),
    );
  }
}
