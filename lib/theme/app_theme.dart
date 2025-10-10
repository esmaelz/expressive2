import 'package:flutter/material.dart';

class AppTheme {
  // Prevent instantiation
  AppTheme._();

  // Custom colors based on the screenshots
  static const Color _lightSurface = Color(0xFFe0f1f8); //Color(0xFFE0F2F1); // Light cyan background
  static const Color _lightPrimary = Color(0xFF795548); // Brown/amber for selected tabs and buttons
  static const Color _lightSecondary = Color(0xFFFFB74D); // Orange for FABs and badges
  static const Color _lightTertiary = Color(0xFF9C27B0); // Purple for alternative FAB
  static const Color _lightSuccess = Color(0xFF4CAF50); // Green for values and positive states
  static const Color _lightError = Color(0xFFD32F2F); // Red for errors and delays
  static const Color _lightSearchBar = Color(0xFFE8DFD0); // Beige/cream for search bar
  static const Color _lightCardBadge = Color(0xFFFFD9A3); // Orange/beige for badges
  static const Color _lightBadgeText = Color(0xFF8B6E47); // Dark brown for badge text
  static const Color _lightInputBorder = Color(0xFF78868A); // Gray for input borders
  static const Color _lightInputBorderFocused = Color(0xFF6D4E05); // Brown/gold for focused inputs

  // Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: _lightPrimary,
      brightness: Brightness.light,
    ).copyWith(
      surface: _lightSurface,
      primary: _lightPrimary,
      secondary: _lightSecondary,
      tertiary: _lightTertiary,
      error: _lightError,
      onSurface: const Color(0xFF1A1C1E),
      surfaceContainerHighest: _lightSearchBar,
      // Custom property for success color
      surfaceTint: _lightSuccess,
    ),

    // Scaffold background
    scaffoldBackgroundColor: _lightSurface,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: _lightSurface,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: Colors.black87,
        size: 24,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: const Color(0xFFf1faff), //Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      surfaceTintColor: Colors.transparent,
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightSecondary,
      foregroundColor: Colors.black87,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      extendedTextStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _lightSearchBar,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(
          color: _lightPrimary,
          width: 1.5,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      hintStyle: TextStyle(
        color: Colors.grey[600],
        fontSize: 15,
      ),
      prefixIconColor: Colors.grey[700],
    ),

    // Tab Bar Theme
    tabBarTheme: const TabBarThemeData(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: _lightPrimary,
      labelColor: Colors.black87,
      unselectedLabelColor: Colors.black54,
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),

    // Navigation Bar Theme (Bottom Navigation)
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.white,
      indicatorColor: _lightSecondary.withOpacity(0.2),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: _lightPrimary,
          );
        }
        return TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey[600],
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(
            color: _lightPrimary,
            size: 24,
          );
        }
        return IconThemeData(
          color: Colors.grey[600],
          size: 24,
        );
      }),
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      bodyLarge: TextStyle(
        fontSize: 15,
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black87,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    ),
  );

  // Extension for custom colors
  static CustomColors customColors = const CustomColors(
    success: _lightSuccess,
    cardBadge: _lightCardBadge,
    badgeText: _lightBadgeText,
    inputBorder: _lightInputBorder,
    inputBorderFocused: _lightInputBorderFocused,
    searchBarBackground: _lightSearchBar,
    statusBadgeBackground: Color(0xFFFFE4B5),
    statusBadgeText: Color(0xFFD4A574),
  );

  // Helper method to get custom input decoration for forms
  static InputDecoration getFormInputDecoration({
    required String label,
    required String hint,
  }) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      labelStyle: const TextStyle(
        color: Color(0xFF757575),
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: const TextStyle(
        color: Color(0xFF9E9E9E),
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      floatingLabelStyle: const TextStyle(
        color: Color(0xFF757575),
        fontSize: 15,
      ),
      filled: true,
      fillColor: _lightSurface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: _lightInputBorder,
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: _lightInputBorderFocused,
          width: 1.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: _lightError,
          width: 1.0,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: _lightError,
          width: 1.5,
        ),
      ),
    );
  }
}

// Custom colors that don't fit in the standard ColorScheme
class CustomColors {
  final Color success;
  final Color cardBadge;
  final Color badgeText;
  final Color inputBorder;
  final Color inputBorderFocused;
  final Color searchBarBackground;
  final Color statusBadgeBackground;
  final Color statusBadgeText;

  const CustomColors({
    required this.success,
    required this.cardBadge,
    required this.badgeText,
    required this.inputBorder,
    required this.inputBorderFocused,
    required this.searchBarBackground,
    required this.statusBadgeBackground,
    required this.statusBadgeText,
  });
}

// Extension to easily access custom colors
extension CustomColorsExtension on BuildContext {
  CustomColors get customColors => AppTheme.customColors;
}