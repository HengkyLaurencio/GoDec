import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:godec/features/order/presentation/widget/front_order_page/history_container.dart';
import 'package:latlong2/latlong.dart';

class CardContainerBot extends StatelessWidget {
  const CardContainerBot({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height * 0.4;

    const LatLng historyLatLng1 = LatLng(-6.175392, 106.827153);
    const LatLng historyLatLng2 = LatLng(-6.301446, 106.895157);
    const LatLng historyLatLng3 = LatLng(-6.218335, 106.802216);
    const LatLng historyLatLng4 = LatLng(-6.125556, 106.655830);

    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 30,
      ),
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HistoryContainer(
            text: 'Monumen Nasional Indonesia',
            latLng: historyLatLng1,
            onTap: () {
              context.push(
                '/order/map?lat=${historyLatLng1.latitude}&lng=${historyLatLng1.longitude}',
              );
            },
          ),
          HistoryContainer(
            text: 'Taman Mini Indonesia Indah',
            latLng: historyLatLng2,
            onTap: () {
              context.push(
                '/order/map?lat=${historyLatLng2.latitude}&lng=${historyLatLng2.longitude}',
              );
            },
          ),
          HistoryContainer(
            text: 'Stadion Utama Gelora Bung Karno',
            latLng: historyLatLng3,
            onTap: () {
              context.push(
                '/order/map?lat=${historyLatLng3.latitude}&lng=${historyLatLng3.longitude}',
              );
            },
          ),
          HistoryContainer(
            text: 'Bandara Internasional Soekarno Hatta',
            latLng: historyLatLng4,
            onTap: () {
              context.push(
                '/order/map?lat=${historyLatLng4.latitude}&lng=${historyLatLng4.longitude}',
              );
            },
          ),
        ],
      ),
    );
  }
}
