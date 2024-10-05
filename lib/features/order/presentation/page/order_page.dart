// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:godec/features/order/presentation/widget/order_page/card_container_ride.dart';
import 'package:latlong2/latlong.dart';
import '../widget/arrow_back.dart';
import '../widget/order_page/card_container_stack.dart';
import '../widget/order_page/card_container_top.dart';
import '../widget/order_page/card_container_bot.dart';
import '../../../../core/widget/location_provider.dart';
import '../widget/order_page/distance_display.dart';
import '../widget/order_page/custom_map.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OrderPage extends StatefulWidget {
  final double? lat;
  final double? lng;

  const OrderPage({super.key, this.lat, this.lng});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final LocationProvider locationProvider = LocationProvider();
  late MapController mapController;
  List<LatLng> routePoints = [];
  final String orsApiKey =
      '5b3ce3597851110001cf624811a8bd52e2f0484a90c1cf49e56570d7';
  LatLng? destination;
  double? distanceInM;
  bool isRideOrdered = false;

  @override
  void initState() {
    super.initState();
    mapController = MapController();

    locationProvider.getCurrentLocation().then((_) {
      setState(() {
        mapController.move(locationProvider.currentLatLng, mapController.zoom);
        if (widget.lat != null && widget.lng != null) {
          _addDestinationMarker(LatLng(widget.lat!, widget.lng!));
        }
      });
    });
  }

  Future<void> _getRoute(LatLng start, LatLng end) async {
    final response = await http.get(
      Uri.parse(
        'https://api.openrouteservice.org/v2/directions/driving-car?api_key=$orsApiKey&start=${start.longitude},${start.latitude}&end=${end.longitude},${end.latitude}',
      ),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> coords =
          data['features'][0]['geometry']['coordinates'];
      setState(() {
        routePoints =
            coords.map((coord) => LatLng(coord[1], coord[0])).toList();
      });
    }
  }

  void _addDestinationMarker(LatLng point) {
    setState(() {
      destination = point;
      routePoints.clear();

      const Distance distance = Distance();
      distanceInM = distance.as(
        LengthUnit.Meter,
        locationProvider.currentLatLng,
        destination!,
      );
    });

    _getRoute(locationProvider.currentLatLng, destination!);
  }

  void _orderRide() {
    setState(() {
      isRideOrdered = true;
    });
  }

  double getPricePerKmBike() {
    const pricePerKmBike = 5000;
    return (distanceInM ?? 0) / 1000 * pricePerKmBike;
  }

  double getPricePerKmCar() {
    const pricePerKmCar = 8500;
    return (distanceInM ?? 0) / 1000 * pricePerKmCar;
  }

  @override
  Widget build(BuildContext context) {
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
                      CustomMap(
                        mapController: mapController,
                        currentLatLng: locationProvider.currentLatLng,
                        destination: destination,
                        routePoints: routePoints,
                        onMapTap: _addDestinationMarker,
                      ),
                      const Positioned(
                        top: 45,
                        left: 20,
                        child: ArrowBack(),
                      ),
                      if (distanceInM != null)
                        DistanceDisplay(distanceInMeters: distanceInM!),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (!isRideOrdered) ...[
            const Positioned(
              bottom: 85,
              left: 20,
              right: 20,
              child: CardContainerTop(),
            ),
            Positioned(
              bottom: 80,
              left: 30,
              right: 30,
              child: CardContainerStack(
                pricePerKmBike: getPricePerKmBike(),
                pricePerKmCar: getPricePerKmCar(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CardContainerBot(onOrderRide: _orderRide),
            ),
          ] else ...[
            const Positioned(
              bottom: 0,
              child: CardContainerRide(),
            ),
          ],
        ],
      ),
    );
  }
}
