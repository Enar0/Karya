import 'package:get/get.dart';

class RiderController extends GetxController {
  final selectedRideType = 'economy'.obs;
  final pickupLocation = 'موقعي الحالي'.obs;
  final destination = ''.obs;
  final estimatedFare = 0.0.obs;

  void selectRideType(String type) {
    selectedRideType.value = type;
    calculateFare();
  }

  void setDestination(String value) {
    destination.value = value;
  }

  void calculateFare() {
    switch (selectedRideType.value) {
      case 'family':
        estimatedFare.value = 18.0;
        break;
      case 'premium':
        estimatedFare.value = 28.0;
        break;
      default:
        estimatedFare.value = 12.0;
    }
  }
}