import 'package:get/get.dart';

class DriverController extends GetxController {
  final isOnline = false.obs;
  final todayEarnings = 0.0.obs;
  final completedTrips = 0.obs;
  final rating = 4.9.obs;

  void toggleOnline() {
    isOnline.value = !isOnline.value;
  }
}