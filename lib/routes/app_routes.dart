abstract class AppRoutes {
  // Initial
  static const splash = '/splash';
  static const onboarding = '/onboarding';
  static const roleSelection = '/role-selection';

  // Auth
  static const login = '/login';
  static const otp = '/otp';

  // Rider
  static const riderHome = '/rider/home';
  static const searchDestination = '/rider/search-destination';
  static const rideSelection = '/rider/ride-selection';
  static const searchingDriver = '/rider/searching-driver';
  static const activeTrip = '/rider/active-trip';
  static const rideCompleted = '/rider/ride-completed';
  static const riderHistory = '/rider/history';

  // Driver
  static const driverHome = '/driver/home';
  static const incomingRequest = '/driver/incoming-request';
  static const driverTrip = '/driver/trip';
  static const earnings = '/driver/earnings';
  static const driverHistory = '/driver/history';

  // Common
  static const wallet = '/wallet';
  static const transactions = '/transactions';
  static const notifications = '/notifications';
  static const profile = '/profile';
  static const settings = '/settings';
  static const support = '/support';
}
