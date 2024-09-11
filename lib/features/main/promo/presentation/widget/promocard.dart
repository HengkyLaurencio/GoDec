import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String title;
  final String description;

  const PromoCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 5,
          )),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 13),
                      Text(
                        description,
                        style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(width: 75),
                      const Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
