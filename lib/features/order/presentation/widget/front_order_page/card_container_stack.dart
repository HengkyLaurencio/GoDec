// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../core/widget/location_provider.dart';

class CardContainerStack extends StatefulWidget {
  final MapController mapController;
  final LatLng currentLatLng;

  const CardContainerStack({
    super.key,
    required this.mapController,
    required this.currentLatLng,
  });

  @override
  State<CardContainerStack> createState() => _CardContainerStackState();
}

class _CardContainerStackState extends State<CardContainerStack> {
  final LocationProvider locationProvider = LocationProvider();

  @override
  void initState() {
    super.initState();

    locationProvider.getCurrentLocation().then((_) {
      setState(() {
        widget.mapController
            .move(locationProvider.currentLatLng, widget.mapController.zoom);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Destination Places",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "For those of you who want to go somewhere",
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 140,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FlutterMap(
                mapController: widget.mapController,
                options: MapOptions(
                  center: widget.currentLatLng,
                  zoom: 13,
                  interactionOptions: const InteractionOptions(
                    flags: ~InteractiveFlag.doubleTapZoom,
                  ),
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'dev.fleatfet.flutter_map.example',
                  ),
                  MarkerLayer(markers: [
                    Marker(
                        point: locationProvider.currentLatLng,
                        alignment: Alignment.centerLeft,
                        child: const Icon(
                          Icons.location_pin,
                          size: 30,
                          color: Colors.red,
                        )),
                  ]),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    context.push('/order/map');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.map, size: 16),
                      SizedBox(width: 15),
                      Text(
                        'Select Location From Map',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
