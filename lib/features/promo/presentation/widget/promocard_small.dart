import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
class PromoCardSmall extends StatelessWidget {
  final String description;
  final IconData icon;
  final int color;
  final int fontColor;
  final String targetScreen; 
  final bool targetLink; 

  const PromoCardSmall({
    super.key,
    required this.description,
    required this.icon,
    required this.color,
    required this.fontColor,
    required this.targetScreen, 
    required this.targetLink, 
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(targetScreen);
        if(targetLink){
          Share.share('Hey, checkout our ride hailling app, Godec! at www.github.com/HengkyLaurencio/GoDec');
        }
      },
      child: Card(
        elevation: 5,
        color: Color(color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const SizedBox(width: 12),
              Icon(
                icon,
                size: 24.0,
                color: Color(fontColor),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    color: Color(fontColor),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Icon(Icons.arrow_forward_ios, size: 20, color: Color(fontColor),),
            ],
          ),
        ),
      ),
    );
  }
}