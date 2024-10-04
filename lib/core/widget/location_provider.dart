import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class LocationProvider {
  late double lat;
  late double lng;

  LocationProvider() {
    lat = 0.00;
    lng = 0.00;
  }

  Future<void> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied.');
    }

    Position currentPosition = await Geolocator.getCurrentPosition();
    lat = currentPosition.latitude;
    lng = currentPosition.longitude;
  }

  LatLng get currentLatLng => LatLng(lat, lng);
}
