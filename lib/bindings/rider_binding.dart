import 'package:get/get.dart';
import '../controllers/rider_controller.dart';
import '../controllers/trip_controller.dart';
import '../controllers/wallet_controller.dart';

class RiderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiderController>(() => RiderController());
    Get.lazyPut<TripController>(() => TripController());
    Get.lazyPut<WalletController>(() => WalletController());
  }
}
