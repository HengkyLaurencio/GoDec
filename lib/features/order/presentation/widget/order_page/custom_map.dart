import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CustomMap extends StatelessWidget {
  final MapController mapController;
  final LatLng currentLatLng;
  final LatLng? destination;
  final List<LatLng> routePoints;
  final Function(LatLng point) onMapTap;

  const CustomMap({
    Key? key,
    required this.mapController,
    required this.currentLatLng,
    this.destination,
    required this.routePoints,
    required this.onMapTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        center: currentLatLng,
        zoom: 13,
        onTap: (tapPosition, point) => onMapTap(point),
        interactionOptions: const InteractionOptions(
          flags: ~InteractiveFlag.doubleTapZoom,
        ),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'dev.fleatfet.flutter_map.example',
        ),
        MarkerLayer(markers: [
          Marker(
            point: currentLatLng,
            width: 30,
            height: 30,
            child: const Icon(
              Icons.location_pin,
              size: 30,
              color: Colors.red,
            ),
          ),
          if (destination != null)
            Marker(
              point: destination!,
              width: 30,
              height: 30,
              child: const Icon(
                Icons.location_pin,
                size: 30,
                color: Colors.blue,
              ),
            ),
        ]),
        PolylineLayer(
          polylines: [
            Polyline(
              points: routePoints,
              strokeWidth: 4.0,
              color: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}
