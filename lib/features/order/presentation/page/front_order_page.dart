import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import '../widget/arrow_back.dart';
import '../widget/front_order_page/card_container_top.dart';
import '../widget/front_order_page/card_container_stack.dart';
import '../widget/front_order_page/card_container_bot.dart';
import '../../../../core/widget/location_provider.dart';

class FrontOrderPage extends StatefulWidget {
  const FrontOrderPage({super.key});

  @override
  State<FrontOrderPage> createState() => _FrontOrderPageState();
}

class _FrontOrderPageState extends State<FrontOrderPage> {
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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 440,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: screenWidth,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
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
                    child: CardContainerTop(),
                  ),
                  Positioned(
                    top: 90,
                    left: 20,
                    right: 20,
                    child: CardContainerStack(
                      mapController: mapController,
                      currentLatLng: locationProvider
                          .currentLatLng, 
                    ),
                  ),
                ],
              ),
            ),
            const CardContainerBot(),
          ],
        ),
      ),
    );
  }
}
