import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../constants/app_constants.dart';

class StorageService extends GetxService {
  late final GetStorage _box;

  Future<StorageService> init() async {
    await GetStorage.init();
    _box = GetStorage();
    return this;
  }

  // Write
  Future<void> write(String key, dynamic value) async {
    await _box.write(key, value);
  }

  // Read
  T? read<T>(String key) {
    return _box.read<T>(key);
  }

  // Remove
  Future<void> remove(String key) async {
    await _box.remove(key);
  }

  // Clear all
  Future<void> clearAll() async {
    await _box.erase();
  }

  // Check if key exists
  bool hasData(String key) {
    return _box.hasData(key);
  }

  // Convenience methods for common operations
  String? get accessToken => read<String>(AppConstants.keyAccessToken);
  set accessToken(String? value) => write(AppConstants.keyAccessToken, value);

  String? get refreshToken => read<String>(AppConstants.keyRefreshToken);
  set refreshToken(String? value) => write(AppConstants.keyRefreshToken, value);

  String? get userId => read<String>(AppConstants.keyUserId);
  set userId(String? value) => write(AppConstants.keyUserId, value);

  String? get userRole => read<String>(AppConstants.keyUserRole);
  set userRole(String? value) => write(AppConstants.keyUserRole, value);

  String get language => read<String>(AppConstants.keyLanguage) ?? AppConstants.langEnglish;
  set language(String value) => write(AppConstants.keyLanguage, value);

  bool get isDarkMode => read<bool>(AppConstants.keyTheme) ?? true;
  set isDarkMode(bool value) => write(AppConstants.keyTheme, value);

  bool get isOnboardingComplete => read<bool>(AppConstants.keyOnboardingComplete) ?? false;
  set isOnboardingComplete(bool value) => write(AppConstants.keyOnboardingComplete, value);

  bool get isDriverOnline => read<bool>(AppConstants.keyDriverOnline) ?? false;
  set isDriverOnline(bool value) => write(AppConstants.keyDriverOnline, value);

  bool get isLoggedIn => accessToken != null;
  bool get isRider => userRole == AppConstants.roleRider;
  bool get isDriver => userRole == AppConstants.roleDriver;
}
