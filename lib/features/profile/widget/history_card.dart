import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistoryCard extends StatelessWidget {
  final String tulisan;
  final String targetscreen;
  final IconData icons;

  const HistoryCard({
    super.key,
    required this.tulisan,
    required this.targetscreen,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {
          context.push(targetscreen);
        },
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child:Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icons,
                    size: 30,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(width: 12,),
                  Text(
                    tulisan,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
          ),
          ),
        ),
      
    );
  }
}
