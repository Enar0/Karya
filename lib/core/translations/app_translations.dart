import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': _enUS,
        'ar_SA': _arSA,
      };

  static const Map<String, String> _enUS = {
    'app_name': 'Karya',
    'welcome': 'Welcome to Karya',
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
  };

  static const Map<String, String> _arSA = {
    'app_name': 'كريا',
    'welcome': 'مرحباً بك في كريا',
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
  };
}