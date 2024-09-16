import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget targetScreen;

  const PromoCard({
    super.key,
    required this.title,
    required this.description,
    required this.targetScreen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(
              color: Color(0xFF23274D),
              width: 5,
            )),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.arrow_forward_ios, size: 20)],
            )
          ]),
        ),
      ),
    );
  }
}
