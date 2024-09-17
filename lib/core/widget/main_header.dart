import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  final String title;
  final Color textColor;

  const MainHeader(
      {super.key, required this.title, this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black, // Warna border
            width: 1.0, // Ketebalan border
          ),
        ),
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
              print('Profile picture tapped!');
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
