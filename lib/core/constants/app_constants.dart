class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'Karya';
  static const String appNameAr = 'كريا';
  static const String appVersion = '1.0.0';
  static const String appBuildNumber = '1';

  // Storage Keys
  static const String keyAccessToken = 'access_token';
  static const String keyRefreshToken = 'refresh_token';
  static const String keyUserId = 'user_id';
  static const String keyUserRole = 'user_role';
  static const String keyLanguage = 'language';
  static const String keyTheme = 'theme';
  static const String keyOnboardingComplete = 'onboarding_complete';
  static const String keyDriverOnline = 'driver_online';

  // User Roles
  static const String roleRider = 'rider';
  static const String roleDriver = 'driver';

  // Languages
  static const String langEnglish = 'en';
  static const String langArabic = 'ar';

  // Ride Status
  static const String ridePending = 'pending';
  static const String rideAccepted = 'accepted';
  static const String rideInProgress = 'in_progress';
  static const String rideCompleted = 'completed';
  static const String rideCancelled = 'cancelled';

  // Payment Methods
  static const String paymentCash = 'cash';
  static const String paymentWallet = 'wallet';
  static const String paymentCard = 'card';

  // Vehicle Types
  static const String vehicleEconomy = 'economy';
  static const String vehicleComfort = 'comfort';
  static const String vehiclePremium = 'premium';

  // API Endpoints (Mock)
  static const String baseUrl = 'https://api.karya.app/v1';
  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;

  // Pagination
  static const int defaultPageSize = 20;

  // Animation Durations (ms)
  static const int animationFast = 150;
  static const int animationNormal = 300;
  static const int animationSlow = 500;

  // Debounce Duration (ms)
  static const int debounceSearch = 500;

  // OTP
  static const int otpLength = 4;
  static const int otpResendSeconds = 60;

  // Map
  static const double defaultMapZoom = 14.0;
  static const double defaultPickupZoom = 16.0;

  // Distance
  static const double minSearchRadius = 1.0; // km
  static const double maxSearchRadius = 50.0; // km

  // Price
  static const double minFare = 5.0;
  static const double bookingFee = 2.0;

  // Rating
  static const double minRating = 1.0;
  static const double maxRating = 5.0;

  // Validation
  static const int minPasswordLength = 8;
  static const int maxNameLength = 50;
  static const int maxPhoneLength = 15;
  static const int maxBioLength = 160;
}
