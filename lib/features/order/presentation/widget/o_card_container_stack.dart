import 'package:flutter/material.dart';
import 'package:godec/features/order/presentation/widget/pick_container.dart';

class OCardContainerStack extends StatelessWidget {
  const OCardContainerStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Text(
              "For You",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 137,
            right: 137,
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PickContainer(),
              SizedBox(height: 12),
              PickContainer(),
            ],
          )
        ],
      ),
    );
  }
}
