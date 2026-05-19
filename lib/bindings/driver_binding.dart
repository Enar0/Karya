import 'package:get/get.dart';
import '../controllers/driver_controller.dart';
import '../controllers/trip_controller.dart';
import '../controllers/wallet_controller.dart';

class DriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DriverController>(() => DriverController());
    Get.lazyPut<TripController>(() => TripController());
    Get.lazyPut<WalletController>(() => WalletController());
  }
}
