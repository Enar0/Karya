import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

class LocationService extends GetxService {
  final Rx<Position?> currentPosition = Rx<Position?>(null);
  final RxBool isLocationEnabled = false.obs;
  final RxBool hasPermission = false.obs;

  Future<LocationService> init() async {
    await checkPermission();
    return this;
  }

  // Check if location services are enabled
  Future<bool> checkLocationServices() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    isLocationEnabled.value = serviceEnabled;
    return serviceEnabled;
  }

  // Check and request location permission
  Future<bool> checkPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        hasPermission.value = false;
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      hasPermission.value = false;
      return false;
    }

    hasPermission.value = true;
    return true;
  }

  // Get current position
  Future<Position?> getCurrentPosition() async {
    try {
      final hasPermission = await checkPermission();
      if (!hasPermission) return null;

      final isEnabled = await checkLocationServices();
      if (!isEnabled) return null;

      currentPosition.value = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 10),
        ),
      );

      return currentPosition.value;
    } catch (e) {
      return null;
    }
  }

  // Get position stream for real-time updates
  Stream<Position> getPositionStream() {
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10, // Update every 10 meters
      ),
    );
  }

  // Calculate distance between two points (in km)
  double calculateDistance(
    double startLat,
    double startLng,
    double endLat,
    double endLng,
  ) {
    return Geolocator.distanceBetween(startLat, startLng, endLat, endLng) / 1000;
  }

  // Open app settings
  Future<void> openSettings() async {
    await Geolocator.openAppSettings();
  }

  // Open location settings
  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }
}
