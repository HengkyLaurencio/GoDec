import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../core/widget/location_provider.dart';

class CardContainerStack extends StatefulWidget {
  final MapController
      mapController; // Mengambil mapController sebagai parameter
  final LatLng currentLatLng; // Mengambil currentLatLng sebagai parameter

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
          // Widget FlutterMap di sini
          SizedBox(
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15), // Add border radius here
              child: FlutterMap(
                mapController: widget.mapController,
                options: MapOptions(
                  center: widget
                      .currentLatLng, // Menggunakan currentLatLng yang diambil dari widget
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
          const SizedBox(height: 8),
          SizedBox(
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Destination Location',
                prefixIcon: const Icon(Icons.location_on),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 25,
                child: OutlinedButton(
                  onPressed: () {
                    context.push('/order/map');
                  },
                  child: const Text('Button'),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  context.push('/order/map');
                },
                child: Container(
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.primary,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
