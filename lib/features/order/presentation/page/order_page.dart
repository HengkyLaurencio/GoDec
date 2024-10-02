import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import '../widget/arrow_back.dart';
import '../widget/check_container.dart';
import '../widget/o_card_container_stack.dart';
import '../widget/o_card_container_top.dart';
import '../widget/o_card_container_bot.dart';
import '../../../../core/widget/location_provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final LocationProvider locationProvider = LocationProvider();
  late MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController();

    locationProvider.getCurrentLocation().then((_) {
      setState(() {
        mapController.move(locationProvider.currentLatLng, mapController.zoom);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight,
                  child: Stack(
                    children: [
                      Positioned(
                        child: FlutterMap(
                          mapController: mapController,
                          options: MapOptions(
                            center: locationProvider.currentLatLng,
                            zoom: 14,
                            interactionOptions: const InteractionOptions(
                              flags: ~InteractiveFlag.doubleTapZoom,
                            ),
                          ),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                              userAgentPackageName:
                                  'dev.fleatfet.flutter_map.example',
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 45,
                        left: 20,
                        child: ArrowBack(),
                      ),
                      const Positioned(
                        top: 90,
                        left: 20,
                        right: 20,
                        child: CheckContainer(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 85,
            left: 20,
            right: 20,
            child: OCardContainerTop(),
          ),
          const Positioned(
            bottom: 80,
            left: 30,
            right: 30,
            child: OCardContainerStack(),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: OCardContainerBot(),
          ),
        ],
      ),
    );
  }
}
