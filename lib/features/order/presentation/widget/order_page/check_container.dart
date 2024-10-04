import 'package:flutter/material.dart';

class CheckContainer extends StatelessWidget {
  const CheckContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'PickUp Location',
                  prefixIcon: const Icon(Icons.location_on),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Colors.grey,
              indent: 15,
              endIndent: 15,
            ),
            SizedBox(
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Destination Location',
                  prefixIcon: const Icon(Icons.my_location),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
