import 'package:get/get.dart';
import '../../data/models/user_model.dart';
import 'storage_service.dart';

class MockAuthService extends GetxService {
  final StorageService _storage = Get.find<StorageService>();

  // Simulated delay
  Future<void> _delay() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  // Mock user database
  final Map<String, Map<String, dynamic>> _mockUsers = {
    '+966501234567': {
      'id': 'user_001',
      'name': 'Ahmed Al-Rashid',
      'email': 'ahmed@example.com',
      'phone': '+966501234567',
      'role': 'rider',
      'avatar': null,
      'rating': 4.8,
      'walletBalance': 150.0,
    },
    '+966502345678': {
      'id': 'driver_001',
      'name': 'Mohammed Hassan',
      'email': 'mohammed@example.com',
      'phone': '+966502345678',
      'role': 'driver',
      'avatar': null,
      'rating': 4.9,
      'walletBalance': 2500.0,
      'vehicle': {
        'type': 'Toyota Camry',
        'model': '2022',
        'color': 'White',
        'plate': 'ABC 123',
      },
      'isOnline': false,
    },
  };

  // Send OTP (mock - always returns success)
  Future<bool> sendOtp(String phone) async {
    await _delay();
    // In production, this would send an actual OTP
    return true;
  }

  // Verify OTP (mock - accepts any 4-digit code)
  Future<UserModel?> verifyOtp(String phone, String otp) async {
    await _delay();

    // Mock validation - accept any 4-digit OTP for demo
    if (otp.length == 4 && int.tryParse(otp) != null) {
      // Create or get user
      if (_mockUsers.containsKey(phone)) {
        final userData = _mockUsers[phone]!;
        return UserModel.fromMap(userData);
      } else {
        // Create new user
        final newUser = {
          'id': 'user_${DateTime.now().millisecondsSinceEpoch}',
          'name': '',
          'email': '',
          'phone': phone,
          'role': 'rider',
          'avatar': null,
          'rating': 5.0,
          'walletBalance': 0.0,
        };
        _mockUsers[phone] = newUser;
        return UserModel.fromMap(newUser);
      }
    }
    return null;
  }

  // Login with credentials (mock)
  Future<UserModel?> login(String email, String password) async {
    await _delay();
    // Mock validation
    if (email.isNotEmpty && password.length >= 6) {
      return UserModel(
        id: 'user_mock',
        name: 'Mock User',
        email: email,
        phone: '',
        role: 'rider',
        avatar: null,
        rating: 4.5,
        walletBalance: 100.0,
      );
    }
    return null;
  }

  // Update user profile
  Future<UserModel?> updateProfile(UserModel user) async {
    await _delay();
    _mockUsers[user.phone] = user.toMap();
    return user;
  }

  // Logout
  Future<void> logout() async {
    await _delay();
    _storage.accessToken = null;
    _storage.refreshToken = null;
    _storage.userId = null;
    _storage.userRole = null;
  }

  // Get current user
  Future<UserModel?> getCurrentUser() async {
    await _delay();
    final userId = _storage.userId;
    if (userId != null) {
      for (final user in _mockUsers.values) {
        if (user['id'] == userId) {
          return UserModel.fromMap(user);
        }
      }
    }
    return null;
  }
}
