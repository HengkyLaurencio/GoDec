import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardContainerStack extends StatelessWidget {
  const CardContainerStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Destination Places",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "For those of you who want to go somewhere",
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            height: 120,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15)),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Destination Location',
                prefixIcon: const Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 25,
                child: OutlinedButton(
                  onPressed: () {
                    context.push('/order/map');
                  },
                  child: const Text('Button'),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  context.push('/order/map');
                },
                child: Container(
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.primary,
                      size: 16,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
