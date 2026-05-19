import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.backgroundDark,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.accent,
          surface: AppColors.surfaceDark,
          error: AppColors.error,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: AppColors.textPrimaryDark,
          onError: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundDark,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          iconTheme: IconThemeData(color: AppColors.textPrimaryDark),
          titleTextStyle: TextStyle(
            color: AppColors.textPrimaryDark,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.surfaceDark,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.textSecondaryDark,
          type: BottomNavigationBarType.fixed,
          elevation: 8,
        ),
        cardTheme: CardTheme(
          color: AppColors.cardDark,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusL),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.paddingXL,
              vertical: AppSizes.paddingL,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusM),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary, width: 1.5),
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.paddingXL,
              vertical: AppSizes.paddingL,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.radiusM),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.elevatedDark,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSizes.paddingL,
            vertical: AppSizes.paddingM,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
            borderSide: const BorderSide(color: AppColors.borderDark),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
            borderSide: const BorderSide(color: AppColors.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
            borderSide: const BorderSide(color: AppColors.error, width: 2),
          ),
          hintStyle: const TextStyle(
            color: AppColors.textTertiaryDark,
            fontSize: 14,
          ),
          labelStyle: const TextStyle(
            color: AppColors.textSecondaryDark,
            fontSize: 14,
          ),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.surfaceDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSizes.radiusXXL),
            ),
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.dividerDark,
          thickness: AppSizes.dividerThickness,
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: AppColors.elevatedDark,
          contentTextStyle: const TextStyle(color: AppColors.textPrimaryDark),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
          ),
          behavior: SnackBarBehavior.floating,
        ),
        dialogTheme: DialogTheme(
          backgroundColor: AppColors.surfaceDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusL),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.textPrimaryDark,
          size: AppSizes.iconL,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: AppColors.textPrimaryDark),
          displayMedium: TextStyle(color: AppColors.textPrimaryDark),
          displaySmall: TextStyle(color: AppColors.textPrimaryDark),
          headlineLarge: TextStyle(color: AppColors.textPrimaryDark),
          headlineMedium: TextStyle(color: AppColors.textPrimaryDark),
          headlineSmall: TextStyle(color: AppColors.textPrimaryDark),
          titleLarge: TextStyle(color: AppColors.textPrimaryDark),
          titleMedium: TextStyle(color: AppColors.textPrimaryDark),
          titleSmall: TextStyle(color: AppColors.textPrimaryDark),
          bodyLarge: TextStyle(color: AppColors.textPrimaryDark),
          bodyMedium: TextStyle(color: AppColors.textSecondaryDark),
          bodySmall: TextStyle(color: AppColors.textTertiaryDark),
          labelLarge: TextStyle(color: AppColors.textPrimaryDark),
          labelMedium: TextStyle(color: AppColors.textSecondaryDark),
          labelSmall: TextStyle(color: AppColors.textTertiaryDark),
        ),
      );

  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.backgroundLight,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.accent,
          surface: AppColors.surfaceLight,
          error: AppColors.error,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: AppColors.textPrimaryLight,
          onError: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundLight,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          iconTheme: IconThemeData(color: AppColors.textPrimaryLight),
          titleTextStyle: TextStyle(
            color: AppColors.textPrimaryLight,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        cardTheme: CardTheme(
          color: AppColors.cardLight,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusL),
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.dividerLight,
          thickness: AppSizes.dividerThickness,
        ),
      );
}
