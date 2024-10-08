import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainHeader extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backgroundColor;

  const MainHeader({
    super.key,
    required this.title,
    this.textColor = const Color.fromARGB(255, 255, 255, 255),
    this.backgroundColor = const Color(0xFF23274D),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push('/profile');
            },
            child: const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
