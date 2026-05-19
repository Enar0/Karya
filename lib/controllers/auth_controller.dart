import 'package:get/get.dart';

import '../core/constants/app_constants.dart';
import '../core/services/mock_auth_service.dart';
import '../core/services/storage_service.dart';
import '../data/models/user_model.dart';
import '../routes/app_routes.dart';

class AuthController extends GetxController {
  final MockAuthService _authService = Get.find<MockAuthService>();
  final StorageService _storageService = Get.find<StorageService>();

  final isLoading = false.obs;
  final phoneNumber = ''.obs;
  final otpCode = ''.obs;
  final currentUser = Rxn<UserModel>();

  Future<void> sendOtp(String phone) async {
    isLoading.value = true;
    phoneNumber.value = phone;

    final success = await _authService.sendOtp(phone);

    isLoading.value = false;

    if (success) {
      Get.toNamed(AppRoutes.otp);
    } else {
      Get.snackbar('error_occurred'.tr, 'try_again'.tr);
    }
  }

  Future<void> verifyOtp(String otp) async {
    isLoading.value = true;
    otpCode.value = otp;

    final user = await _authService.verifyOtp(phoneNumber.value, otp);

    isLoading.value = false;

    if (user != null) {
      currentUser.value = user;

      _storageService.accessToken = 'mock_access_token';
      _storageService.refreshToken = 'mock_refresh_token';
      _storageService.userId = user.id;
      _storageService.userRole = user.role;

      if (user.role == AppConstants.roleDriver) {
        Get.offAllNamed(AppRoutes.driverHome);
      } else {
        Get.offAllNamed(AppRoutes.riderHome);
      }
    } else {
      Get.snackbar('error_invalid_otp'.tr, 'try_again'.tr);
    }
  }

  Future<void> logout() async {
    await _authService.logout();
    currentUser.value = null;
    Get.offAllNamed(AppRoutes.login);
  }
}