import 'package:get/get.dart';

class WalletController extends GetxController {
  final balance = 0.0.obs;

  final transactions = <String>[
    'رحلة مكتملة - 12 LYD',
    'شحن محفظة - 50 LYD',
  ].obs;
}