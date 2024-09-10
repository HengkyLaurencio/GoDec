import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight * 0.25;
    final double overlayHeight = imageHeight / 2;

    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/b/b9/Solid_red.png'), // Replace with your actual image URL
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: imageHeight,
                color: Colors.grey.shade800,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/b/b9/Solid_red.png'), // Replace with your actual image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20.0, left: 20.0, top: 20.0, bottom: 0.0),
                  child: Column(
                    children: [
                      // Placeholder Container with margin
                      _buildPlaceholderContainer(
                          height: 35, margin: const EdgeInsets.only(top: 50.0)),
                      const SizedBox(height: 10),

                      // Two large rectangular containers with margin
                      _buildPlaceholderContainer(
                          height: 130,
                          margin: const EdgeInsets.only(top: 20.0)),
                      const SizedBox(height: 16),

                      _buildPlaceholderContainer(
                          height: 80, margin: const EdgeInsets.only(top: 16.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Overlay containers
          Positioned(
            left: 16.0,
            top: imageHeight - overlayHeight,
            child: _buildRoundedContainer(),
          ),
          Positioned(
            right: 16.0,
            top: imageHeight - overlayHeight,
            child: _buildRoundedContainer(),
          ),
        ],
      ),
    );
  }

  Widget _buildRoundedContainer() {
    return Container(
      width: 150, // Adjust the width as per your design
      height: 150, // Adjust the height as per your design
      margin: const EdgeInsets.all(8.0), // Add margin around the container
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  Widget _buildPlaceholderContainer(
      {double height = 50, EdgeInsets margin = EdgeInsets.zero}) {
    return Container(
      width: double.infinity,
      height: height,
      margin: margin, // Add margin as a parameter
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
