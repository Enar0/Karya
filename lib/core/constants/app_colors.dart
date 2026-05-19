import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Colors
  static const Color primary = Color(0xFF6366F1);
  static const Color primaryLight = Color(0xFF818CF8);
  static const Color primaryDark = Color(0xFF4F46E5);

  // Accent Colors
  static const Color accent = Color(0xFF10B981);
  static const Color accentLight = Color(0xFF34D399);

  // Background Colors - Dark Mode
  static const Color backgroundDark = Color(0xFF0F0F14);
  static const Color surfaceDark = Color(0xFF1A1A24);
  static const Color cardDark = Color(0xFF242432);
  static const Color elevatedDark = Color(0xFF2D2D3D);

  // Background Colors - Light Mode
  static const Color backgroundLight = Color(0xFFF8F9FA);
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color cardLight = Color(0xFFF1F3F5);

  // Text Colors
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFA0A0B0);
  static const Color textTertiaryDark = Color(0xFF6B6B7B);

  static const Color textPrimaryLight = Color(0xFF1A1A2E);
  static const Color textSecondaryLight = Color(0xFF6B7280);
  static const Color textTertiaryLight = Color(0xFF9CA3AF);

  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // Ride Status Colors
  static const Color ridePending = Color(0xFFFBBF24);
  static const Color rideAccepted = Color(0xFF6366F1);
  static const Color rideInProgress = Color(0xFF10B981);
  static const Color rideCompleted = Color(0xFF22C55E);
  static const Color rideCancelled = Color(0xFFEF4444);

  // Driver Status Colors
  static const Color online = Color(0xFF10B981);
  static const Color offline = Color(0xFF6B7280);
  static const Color busy = Color(0xFFF59E0B);

  // Gradient Colors
  static const List<Color> primaryGradient = [
    Color(0xFF6366F1),
    Color(0xFF8B5CF6),
  ];

  static const List<Color> accentGradient = [
    Color(0xFF10B981),
    Color(0xFF059669),
  ];

  static const List<Color> darkGradient = [
    Color(0xFF1A1A24),
    Color(0xFF0F0F14),
  ];

  // Border Colors
  static const Color borderDark = Color(0xFF2D2D3D);
  static const Color borderLight = Color(0xFFE5E7EB);

  // Divider Colors
  static const Color dividerDark = Color(0xFF2D2D3D);
  static const Color dividerLight = Color(0xFFE5E7EB);

  // Overlay Colors
  static const Color overlayDark = Color(0xCC0F0F14);
  static const Color overlayLight = Color(0xCCFFFFFF);
}
