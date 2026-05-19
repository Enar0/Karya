import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../bindings/initial_binding.dart';
import '../../bindings/auth_binding.dart';
import '../../bindings/rider_binding.dart';
import '../../bindings/driver_binding.dart';
import '../../screens/splash/splash_screen.dart';
import '../../screens/onboarding/onboarding_screen.dart';
import '../../screens/auth/role_selection_screen.dart';
import '../../screens/auth/login_screen.dart';
import '../../screens/auth/otp_screen.dart';
import '../../screens/rider/rider_home_screen.dart';
import '../../screens/rider/search_destination_screen.dart';
import '../../screens/rider/ride_selection_screen.dart';
import '../../screens/rider/searching_driver_screen.dart';
import '../../screens/rider/active_trip_screen.dart';
import '../../screens/rider/ride_completed_screen.dart';
import '../../screens/rider/rider_history_screen.dart';
import '../../screens/driver/driver_home_screen.dart';
import '../../screens/driver/incoming_request_screen.dart';
import '../../screens/driver/driver_trip_screen.dart';
import '../../screens/driver/earnings_screen.dart';
import '../../screens/driver/driver_history_screen.dart';
import '../../screens/wallet/wallet_screen.dart';
import '../../screens/wallet/transactions_screen.dart';
import '../../screens/notifications/notifications_screen.dart';
import '../../screens/profile/profile_screen.dart';
import '../../screens/profile/settings_screen.dart';
import '../../screens/support/support_screen.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.roleSelection,
      page: () => const RoleSelectionScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.otp,
      page: () => const OtpScreen(),
      binding: AuthBinding(),
    ),
    // Rider Routes
    GetPage(
      name: AppRoutes.riderHome,
      page: () => const RiderHomeScreen(),
      binding: RiderBinding(),
    ),
    GetPage(
      name: AppRoutes.searchDestination,
      page: () => const SearchDestinationScreen(),
      binding: RiderBinding(),
    ),
    GetPage(
      name: AppRoutes.rideSelection,
      page: () => const RideSelectionScreen(),
      binding: RiderBinding(),
    ),
    GetPage(
      name: AppRoutes.searchingDriver,
      page: () => const SearchingDriverScreen(),
      binding: RiderBinding(),
    ),
    GetPage(
      name: AppRoutes.activeTrip,
      page: () => const ActiveTripScreen(),
      binding: RiderBinding(),
    ),
    GetPage(
      name: AppRoutes.rideCompleted,
      page: () => const RideCompletedScreen(),
      binding: RiderBinding(),
    ),
    GetPage(
      name: AppRoutes.riderHistory,
      page: () => const RiderHistoryScreen(),
      binding: RiderBinding(),
    ),
    // Driver Routes
    GetPage(
      name: AppRoutes.driverHome,
      page: () => const DriverHomeScreen(),
      binding: DriverBinding(),
    ),
    GetPage(
      name: AppRoutes.incomingRequest,
      page: () => const IncomingRequestScreen(),
      binding: DriverBinding(),
    ),
    GetPage(
      name: AppRoutes.driverTrip,
      page: () => const DriverTripScreen(),
      binding: DriverBinding(),
    ),
    GetPage(
      name: AppRoutes.earnings,
      page: () => const EarningsScreen(),
      binding: DriverBinding(),
    ),
    GetPage(
      name: AppRoutes.driverHistory,
      page: () => const DriverHistoryScreen(),
      binding: DriverBinding(),
    ),
    // Common Routes
    GetPage(
      name: AppRoutes.wallet,
      page: () => const WalletScreen(),
    ),
    GetPage(
      name: AppRoutes.transactions,
      page: () => const TransactionsScreen(),
    ),
    GetPage(
      name: AppRoutes.notifications,
      page: () => const NotificationsScreen(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: AppRoutes.settings,
      page: () => const SettingsScreen(),
    ),
    GetPage(
      name: AppRoutes.support,
      page: () => const SupportScreen(),
    ),
  ];
}
