import 'package:get/get.dart';

class Validators {
  Validators._();

  // Empty field validation
  static String? required(String? value, {String? fieldName}) {
    if (value == null || value.trim().isEmpty) {
      return fieldName != null ? '$fieldName is required'.tr : 'This field is required'.tr;
    }
    return null;
  }

  // Name validation
  static String? name(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required'.tr;
    }
    if (value.length < 3) {
      return 'Name must be at least 3 characters'.tr;
    }
    if (value.length > 50) {
      return 'Name must be less than 50 characters'.tr;
    }
    return null;
  }

  // Email validation
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required'.tr;
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email'.tr;
    }
    return null;
  }

  // Phone validation
  static String? phone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required'.tr;
    }
    // Remove any spaces or dashes
    final cleanPhone = value.replaceAll(RegExp(r'[\s\-\(\)]'), '');
    // Check for valid Saudi phone format
    if (cleanPhone.length < 9 || cleanPhone.length > 15) {
      return 'Please enter a valid phone number'.tr;
    }
    return null;
  }

  // Password validation
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required'.tr;
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters'.tr;
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter'.tr;
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter'.tr;
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number'.tr;
    }
    return null;
  }

  // Simple password validation (for OTP-based auth)
  static String? simplePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required'.tr;
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters'.tr;
    }
    return null;
  }

  // Confirm password validation
  static String? confirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password'.tr;
    }
    if (value != password) {
      return 'Passwords do not match'.tr;
    }
    return null;
  }

  // OTP validation
  static String? otp(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the verification code'.tr;
    }
    if (value.length != 4) {
      return 'Verification code must be 4 digits'.tr;
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Verification code must contain only numbers'.tr;
    }
    return null;
  }

  // Amount validation
  static String? amount(String? value, {double min = 0, double max = 10000}) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount'.tr;
    }
    final amount = double.tryParse(value);
    if (amount == null) {
      return 'Please enter a valid amount'.tr;
    }
    if (amount < min) {
      return 'Amount must be at least $min'.tr;
    }
    if (amount > max) {
      return 'Amount must be less than $max'.tr;
    }
    return null;
  }

  // Rating validation
  static String? rating(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select a rating'.tr;
    }
    final rating = int.tryParse(value);
    if (rating == null || rating < 1 || rating > 5) {
      return 'Rating must be between 1 and 5'.tr;
    }
    return null;
  }

  // Bio/description validation
  static String? bio(String? value) {
    if (value == null || value.isEmpty) {
      return null; // Bio is optional
    }
    if (value.length > 160) {
      return 'Bio must be less than 160 characters'.tr;
    }
    return null;
  }

  // Car plate validation
  static String? carPlate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the car plate number'.tr;
    }
    final plateRegex = RegExp(r'^[A-Z]{1,3}\s?[0-9]{1,4}\s?[A-Z]{0,3}$');
    if (!plateRegex.hasMatch(value.toUpperCase())) {
      return 'Please enter a valid plate number'.tr;
    }
    return null;
  }
}
