import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Helpers {
  Helpers._();

  // Date formatting
  static String formatDate(DateTime date, {String format = 'MMM dd, yyyy'}) {
    return DateFormat(format).format(date);
  }

  static String formatTime(DateTime date, {String format = 'HH:mm'}) {
    return DateFormat(format).format(date);
  }

  static String formatDateTime(DateTime date) {
    return DateFormat('MMM dd, yyyy HH:mm').format(date);
  }

  // Relative time
  static String timeAgo(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} year(s) ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} month(s) ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} day(s) ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour(s) ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute(s) ago';
    } else {
      return 'Just now';
    }
  }

  // Currency formatting
  static String formatCurrency(double amount, {String symbol = 'SAR'}) {
    final formatter = NumberFormat.currency(
      symbol: symbol,
      decimalDigits: 2,
    );
    return formatter.format(amount);
  }

  // Phone number formatting
  static String formatPhoneNumber(String phone) {
    if (phone.length == 9 && phone.startsWith('5')) {
      return '+966 $phone';
    }
    return phone;
  }

  // Distance formatting
  static String formatDistance(double distanceKm) {
    if (distanceKm < 1) {
      return '${(distanceKm * 1000).round()} m';
    }
    return '${distanceKm.toStringAsFixed(1)} km';
  }

  // Duration formatting
  static String formatDuration(int minutes) {
    if (minutes < 60) {
      return '$minutes min';
    }
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (mins == 0) {
      return '$hours hr';
    }
    return '$hours hr $mins min';
  }

  // RTL/LTR helpers
  static bool get isRTL => Get.locale?.languageCode == 'ar';

  static TextDirection get textDirection => isRTL ? TextDirection.rtl : TextDirection.ltr;

  static EdgeInsets get startPadding => EdgeInsets.only(left: isRTL ? 16 : 0, right: isRTL ? 0 : 16);

  static EdgeInsets get endPadding => EdgeInsets.only(right: isRTL ? 16 : 0, left: isRTL ? 0 : 16);

  // Rating stars builder
  static List<Widget> buildRatingStars(double rating, {double size = 16}) {
    return List.generate(5, (index) {
      if (index < rating.floor()) {
        return Icon(Icons.star, size: size, color: Colors.amber);
      } else if (index < rating) {
        return Icon(Icons.star_half, size: size, color: Colors.amber);
      } else {
        return Icon(Icons.star_border, size: size, color: Colors.amber);
      }
    });
  }

  // Status color helper
  static Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return Colors.amber;
      case 'accepted':
        return Colors.blue;
      case 'in_progress':
        return Colors.green;
      case 'completed':
        return Colors.teal;
      case 'cancelled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  // Validation helpers
  static bool isValidEmail(String email) {
    return GetUtils.isEmail(email);
  }

  static bool isValidPhone(String phone) {
    return GetUtils.isPhoneNumber(phone);
  }

  // Capitalize first letter
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  // Generate initials from name
  static String getInitials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
  }
}
