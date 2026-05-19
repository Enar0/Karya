import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': _enUS,
        'ar_SA': _arSA,
      };

  static const Map<String, String> _enUS = {
    // App
    'app_name': 'Karya',
    'welcome': 'Welcome',
    'continue_text': 'Continue',
    'skip': 'Skip',
    'done': 'Done',
    'cancel': 'Cancel',
    'save': 'Save',
    'delete': 'Delete',
    'edit': 'Edit',
    'close': 'Close',
    'confirm': 'Confirm',
    'retry': 'Retry',
    'search': 'Search',
    'loading': 'Loading...',
    'no_data': 'No data available',
    'error_occurred': 'An error occurred',
    'try_again': 'Try again',

    // Onboarding
    'onboarding_title_1': 'Book Your Ride',
    'onboarding_desc_1': 'Get a premium ride in minutes with our verified drivers',
    'onboarding_title_2': 'Earn with Karya',
    'onboarding_desc_2': 'Start earning by driving with your own car',
    'onboarding_title_3': 'Safe & Secure',
    'onboarding_desc_3': 'Your safety is our top priority',

    // Auth
    'login': 'Login',
    'logout': 'Logout',
    'signup': 'Sign Up',
    'phone_number': 'Phone Number',
    'enter_phone': 'Enter your phone number',
    'enter_otp': 'Enter verification code',
    'otp_sent': 'We sent a code to',
    'resend_code': 'Resend code',
    'resend_in': 'Resend in',
    'seconds': 'seconds',
    'verify': 'Verify',
    'didnt_receive': "Didn't receive the code?",
    'email': 'Email',
    'password': 'Password',
    'confirm_password': 'Confirm Password',
    'forgot_password': 'Forgot Password?',
    'create_account': 'Create Account',
    'already_have_account': 'Already have an account?',
    'dont_have_account': "Don't have an account?",

    // Role Selection
    'select_role': 'Select Your Role',
    'i_am_rider': "I'm a Rider",
    'i_am_driver': "I'm a Driver",
    'rider_desc': 'Book rides and travel comfortably',
    'driver_desc': 'Drive and earn money',

    // Rider Home
    'where_to': 'Where to?',
    'pickup_location': 'Pickup Location',
    'drop_off_location': 'Drop-off Location',
    'search_destination': 'Search destination',
    'recent_locations': 'Recent Locations',
    'saved_places': 'Saved Places',
    'home': 'Home',
    'work': 'Work',

    // Ride Selection
    'select_ride': 'Select Your Ride',
    'economy': 'Economy',
    'comfort': 'Comfort',
    'premium': 'Premium',
    'minute': 'min',
    'distance': 'km',
    'trip_estimate': 'Trip Estimate',
    'book_now': 'Book Now',

    // Driver
    'online': 'Online',
    'offline': 'Offline',
    'go_online': 'Go Online',
    'go_offline': 'Go Offline',
    'incoming_request': 'Incoming Request',
    'accept': 'Accept',
    'decline': 'Decline',
    'pickup': 'Pickup',
    'navigate': 'Navigate',
    'start_trip': 'Start Trip',
    'end_trip': 'End Trip',
    'trip_started': 'Trip Started',
    'trip_ended': 'Trip Ended',
    'earnings': 'Earnings',
    'todays_earnings': "Today's Earnings",
    'weekly_earnings': 'Weekly Earnings',
    'monthly_earnings': 'Monthly Earnings',
    'total_trips': 'Total Trips',

    // Trip
    'active_trip': 'Active Trip',
    'trip_in_progress': 'Trip in Progress',
    'ride_completed': 'Ride Completed',
    'trip_summary': 'Trip Summary',
    'rate_your_trip': 'Rate Your Trip',
    'add_tip': 'Add Tip',
    'payment': 'Payment',
    'cash': 'Cash',
    'wallet': 'Wallet',
    'card': 'Card',
    'total': 'Total',
    'base_fare': 'Base Fare',
    'distance_fare': 'Distance',
    'time_fare': 'Time',
    'discount': 'Discount',
    'rate_driver': 'Rate Driver',
    'submit_rating': 'Submit Rating',

    // Wallet
    'wallet': 'Wallet',
    'balance': 'Balance',
    'add_money': 'Add Money',
    'withdraw': 'Withdraw',
    'transactions': 'Transactions',
    'no_transactions': 'No transactions yet',
    'top_up': 'Top Up',

    // Profile
    'profile': 'Profile',
    'settings': 'Settings',
    'edit_profile': 'Edit Profile',
    'name': 'Name',
    'full_name': 'Full Name',
    'change_language': 'Change Language',
    'notifications': 'Notifications',
    'dark_mode': 'Dark Mode',
    'privacy_policy': 'Privacy Policy',
    'terms_of_service': 'Terms of Service',
    'about': 'About',
    'version': 'Version',
    'logout_confirm': 'Are you sure you want to logout?',

    // History
    'ride_history': 'Ride History',
    'trip_history': 'Trip History',
    'no_rides': 'No rides yet',
    'no_trips': 'No trips yet',

    // Support
    'support': 'Support',
    'help_center': 'Help Center',
    'contact_us': 'Contact Us',
    'report_issue': 'Report an Issue',
    'frequently_asked': 'Frequently Asked Questions',

    // Notifications
    'notification_title': 'Notifications',
    'no_notifications': 'No notifications',
    'mark_all_read': 'Mark all as read',

    // Status
    'pending': 'Pending',
    'accepted': 'Accepted',
    'in_progress': 'In Progress',
    'completed': 'Completed',
    'cancelled': 'Cancelled',

    // Errors
    'error_network': 'Network error. Please check your connection.',
    'error_server': 'Server error. Please try again later.',
    'error_unknown': 'Something went wrong. Please try again.',
    'error_invalid_phone': 'Please enter a valid phone number.',
    'error_invalid_otp': 'Invalid verification code.',
    'error_empty_field': 'This field cannot be empty.',
    'error_password_short': 'Password must be at least 8 characters.',
    'error_password_mismatch': 'Passwords do not match.',
  };

  static const Map<String, String> _arSA = {
    // App
    'app_name': 'كريا',
    'welcome': 'مرحباً',
    'continue_text': 'متابعة',
    'skip': 'تخطي',
    'done': 'تم',
    'cancel': 'إلغاء',
    'save': 'حفظ',
    'delete': 'حذف',
    'edit': 'تعديل',
    'close': 'إغلاق',
    'confirm': 'تأكيد',
    'retry': 'إعادة المحاولة',
    'search': 'بحث',
    'loading': 'جاري التحميل...',
    'no_data': 'لا توجد بيانات',
    'error_occurred': 'حدث خطأ',
    'try_again': 'حاول مرة أخرى',

    // Onboarding
    'onboarding_title_1': 'احجز رحلتك',
    'onboarding_desc_1': 'احصل على رحلة فاخرة في دقائق مع سائقينا المعتمدين',
    'onboarding_title_2': 'اكسب مع كريا',
    'onboarding_desc_2': 'ابدأ بالربح من خلال القيادة بسيارتك الخاصة',
    'onboarding_title_3': 'آمن ومضمون',
    'onboarding_desc_3': 'سلامتك هي أولويتنا القصوى',

    // Auth
    'login': 'تسجيل الدخول',
    'logout': 'تسجيل الخروج',
    'signup': 'إنشاء حساب',
    'phone_number': 'رقم الهاتف',
    'enter_phone': 'أدخل رقم هاتفك',
    'enter_otp': 'أدخل رمز التحقق',
    'otp_sent': 'أرسلنا رمزاً إلى',
    'resend_code': 'إعادة إرسال الرمز',
    'resend_in': 'إعادة الإرسال خلال',
    'seconds': 'ثانية',
    'verify': 'تحقق',
    'didnt_receive': 'لم تستلم الرمز؟',
    'email': 'البريد الإلكتروني',
    'password': 'كلمة المرور',
    'confirm_password': 'تأكيد كلمة المرور',
    'forgot_password': 'نسيت كلمة المرور؟',
    'create_account': 'إنشاء حساب',
    'already_have_account': 'لديك حساب بالفعل؟',
    'dont_have_account': 'ليس لديك حساب؟',

    // Role Selection
    'select_role': 'اختر دورك',
    'i_am_rider': 'أنا راكب',
    'i_am_driver': 'أنا سائق',
    'rider_desc': 'احجز رحلات واسافر براحة',
    'driver_desc': 'قد وأربح المال',

    // Rider Home
    'where_to': 'إلى أين؟',
    'pickup_location': 'نقطة الانطلاق',
    'drop_off_location': 'نقطة الوصول',
    'search_destination': 'ابحث عن الوجهة',
    'recent_locations': 'المواقع الأخيرة',
    'saved_places': 'العناوين المحفوظة',
    'home': 'المنزل',
    'work': 'العمل',

    // Ride Selection
    'select_ride': 'اختر رحلتك',
    'economy': 'اقتصادي',
    'comfort': 'مريح',
    'premium': 'فاخر',
    'minute': 'دقيقة',
    'distance': 'كم',
    'trip_estimate': 'تقدير الرحلة',
    'book_now': 'احجز الآن',

    // Driver
    'online': 'متصل',
    'offline': 'غير متصل',
    'go_online': 'الاتصال',
    'go_offline': 'قطع الاتصال',
    'incoming_request': 'طلب جديد',
    'accept': 'قبول',
    'decline': 'رفض',
    'pickup': 'استلام',
    'navigate': 'تنقل',
    'start_trip': 'بدء الرحلة',
    'end_trip': 'إنهاء الرحلة',
    'trip_started': 'بدأت الرحلة',
    'trip_ended': 'انتهت الرحلة',
    'earnings': 'الأرباح',
    'todays_earnings': 'أرباح اليوم',
    'weekly_earnings': 'أرباح الأسبوع',
    'monthly_earnings': 'أرباح الشهر',
    'total_trips': 'إجمالي الرحلات',

    // Trip
    'active_trip': 'رحلة نشطة',
    'trip_in_progress': 'الرحلة جارية',
    'ride_completed': 'اكتملت الرحلة',
    'trip_summary': 'ملخص الرحلة',
    'rate_your_trip': 'قيّم رحلتك',
    'add_tip': 'إضافة إكرامية',
    'payment': 'الدفع',
    'cash': 'نقدي',
    'wallet': 'المحفظة',
    'card': 'بطاقة',
    'total': 'الإجمالي',
    'base_fare': 'الأجرة الأساسية',
    'distance_fare': 'المسافة',
    'time_fare': 'الوقت',
    'discount': 'خصم',
    'rate_driver': 'قيّم السائق',
    'submit_rating': 'إرسال التقييم',

    // Wallet
    'wallet': 'المحفظة',
    'balance': 'الرصيد',
    'add_money': 'إضافة رصيد',
    'withdraw': 'سحب',
    'transactions': 'المعاملات',
    'no_transactions': 'لا توجد معاملات بعد',
    'top_up': 'شحن',

    // Profile
    'profile': 'الملف الشخصي',
    'settings': 'الإعدادات',
    'edit_profile': 'تعديل الملف',
    'name': 'الاسم',
    'full_name': 'الاسم الكامل',
    'change_language': 'تغيير اللغة',
    'notifications': 'الإشعارات',
    'dark_mode': 'الوضع الداكن',
    'privacy_policy': 'سياسة الخصوصية',
    'terms_of_service': 'شروط الخدمة',
    'about': 'عن التطبيق',
    'version': 'الإصدار',
    'logout_confirm': 'هل أنت متأكد من تسجيل الخروج؟',

    // History
    'ride_history': 'سجل الرحلات',
    'trip_history': 'سجل الرحلات',
    'no_rides': 'لا توجد رحلات بعد',
    'no_trips': 'لا توجد رحلات بعد',

    // Support
    'support': 'الدعم',
    'help_center': 'مركز المساعدة',
    'contact_us': 'تواصل معنا',
    'report_issue': 'الإبلاغ عن مشكلة',
    'frequently_asked': 'الأسئلة الشائعة',

    // Notifications
    'notification_title': 'الإشعارات',
    'no_notifications': 'لا توجد إشعارات',
    'mark_all_read': 'تحديد الكل كمقروء',

    // Status
    'pending': 'قيد الانتظار',
    'accepted': 'تم القبول',
    'in_progress': 'جاري التنفيذ',
    'completed': 'مكتمل',
    'cancelled': 'ملغى',

    // Errors
    'error_network': 'خطأ في الشبكة. يرجى التحقق من الاتصال.',
    'error_server': 'خطأ في الخادم. يرجى المحاولة لاحقاً.',
    'error_unknown': 'حدث خطأ ما. يرجى المحاولة مرة أخرى.',
    'error_invalid_phone': 'يرجى إدخال رقم هاتف صحيح.',
    'error_invalid_otp': 'رمز التحقق غير صحيح.',
    'error_empty_field': 'هذا الحقل لا يمكن أن يكون فارغاً.',
    'error_password_short': 'يجب أن تكون كلمة المرور 8 أحرف على الأقل.',
    'error_password_mismatch': 'كلمات المرور غير متطابقة.',
  };
}
