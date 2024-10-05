// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../widget/order_page/pick_container_bike.dart';
import '../../widget/order_page/pick_container_car.dart';

class CardContainerStack extends StatefulWidget {
  final double pricePerKmBike;
  final double pricePerKmCar;

  const CardContainerStack(
      {super.key, required this.pricePerKmBike, required this.pricePerKmCar});

  @override
  _CardContainerStackState createState() => _CardContainerStackState();
}

class _CardContainerStackState extends State<CardContainerStack> {
  String selectedOption = '';

  void _selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.235;
    return Container(
      height: height,
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          const Positioned(
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
          const Positioned(
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
              PickContainerBike(
                pricePerKmBike: widget.pricePerKmBike,
                isSelected: selectedOption == 'bike',
                onSelect: () => _selectOption('bike'),
              ),
              const SizedBox(height: 12),
              PickContainerCar(
                pricePerKmCar: widget.pricePerKmCar,
                isSelected: selectedOption == 'car',
                onSelect: () => _selectOption('car'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
