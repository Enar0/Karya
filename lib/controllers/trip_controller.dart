import 'package:get/get.dart';

class TripController extends GetxController {
  final isTripActive = false.obs;
  final tripStatus = 'idle'.obs;
  final etaMinutes = 5.obs;
  final distanceKm = 2.4.obs;
  final fare = 12.0.obs;

  void startSearching() {
    isTripActive.value = true;
    tripStatus.value = 'searching';
  }

  void driverAssigned() {
    isTripActive.value = true;
    tripStatus.value = 'driver_assigned';
  }

  void startTrip() {
    isTripActive.value = true;
    tripStatus.value = 'in_progress';
  }

  void completeTrip() {
    isTripActive.value = false;
    tripStatus.value = 'completed';
  }

  void cancelTrip() {
    isTripActive.value = false;
    tripStatus.value = 'cancelled';
  }
}