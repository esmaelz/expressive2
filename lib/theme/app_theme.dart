import 'package:flutter/material.dart';

class AppTheme {
  // Prevent instantiation
  AppTheme._();

  // Custom colors based on the screenshots
  static const Color _lightSurface = Color(0xFFe0f1f8); // Light cyan background
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

  // Additional colors used in widgets
  static const Color _lightCardBackground = Color(0xFFf1faff); // Card background color
  static const Color _lightOrderBadge = Color(0xFFfcbd00); // Order ID badge yellow/gold
  static const Color _lightTextPrimary = Color(0xFF2C2C2C); // Primary text color (darker)
  static const Color _lightTextSecondary = Color(0xFF233338); // Secondary text color
  static const Color _lightTextTertiary = Color(0xFF5f6368); // Tertiary text color (gray)
  static const Color _lightTextLabel = Color(0xFF757575); // Label text color
  static const Color _lightTextHint = Color(0xFF9E9E9E); // Hint text color
  static const Color _lightSearchBarFill = Color(0xFFF1FAFF); // Search bar fill color
  static const Color _lightSearchHint = Color(0xFF738387); // Search hint text color
  static const Color _lightSearchFill = Color(0xFFDAEBF2); // Alternative search fill color
  static const Color _lightDivider = Color(0xFFd7e8ef); // Divider color
  static const Color _lightTabSelected = Color(0xFF6c4f07); // Selected tab label color
  static const Color _lightTabUnselected = Color(0xFF5f7075); // Unselected tab label color
  static const Color _lightTabIndicator = Color(0xFF815a04); // Tab indicator color
  static const Color _lightFabBackground = Color(0xFFfedea5); // FAB background color
  static const Color _lightNavBarBackground = Color(0xFFdaebf2); // Bottom nav bar background
  static const Color _lightNavBarIndicator = Color(0xFFe4dcff); // Bottom nav bar indicator
  static const Color _lightNavBarSelected = Color(0xFF1b1837); // Bottom nav bar selected item
  static const Color _lightDatePickerPrimary = Color(0xFF7b5500); // Date picker primary color
  static const Color _lightDatePickerSurface = Color(0xFFE8F4F8); // Date picker surface color
  static const Color _lightDatePickerText = Color(0xFF314045); // Date picker text color
  static const Color _lightDatePickerButton = Color(0xFF967d3e); // Date picker button color
  static const Color _lightBlack87 = Colors.black87; // Standard black87
  static const Color _lightBlack54 = Colors.black54; // Standard black54
  static const Color _lightGrey600 = Color(0xFF757575); // Grey 600
  static const Color _lightGrey700 = Color(0xFF616161); // Grey 700
  static const Color _lightTransparent = Colors.transparent; // Transparent
  static const Color _lightWhite = Colors.white; // White
  static const Color _lightBlackShadow = Colors.black; // Black for shadows

  // Dark theme colors
  static const Color _darkSurface = Color(0xFF121212); // Dark surface background
  static const Color _darkPrimary = Color(0xFFD4A574); // Light brown/amber for dark theme
  static const Color _darkSecondary = Color(0xFFFFB74D); // Orange for FABs and badges
  static const Color _darkTertiary = Color(0xFFCE93D8); // Light purple for dark theme
  static const Color _darkSuccess = Color(0xFF81C784); // Light green for values and positive states
  static const Color _darkError = Color(0xFFEF5350); // Light red for errors
  static const Color _darkSearchBar = Color(0xFF2C2C2C); // Dark beige/brown for search bar
  static const Color _darkCardBadge = Color(0xFFFFB74D); // Orange for badges
  static const Color _darkBadgeText = Color(0xFF1A1A1A); // Very dark for badge text
  static const Color _darkInputBorder = Color(0xFF616161); // Gray for input borders
  static const Color _darkInputBorderFocused = Color(0xFFD4A574); // Light brown for focused inputs

  // Additional dark theme colors
  static const Color _darkCardBackground = Color(0xFF1E1E1E); // Card background color
  static const Color _darkOrderBadge = Color(0xFFFFB74D); // Order ID badge orange/gold
  static const Color _darkTextPrimary = Color(0xFFE0E0E0); // Primary text color (light)
  static const Color _darkTextSecondary = Color(0xFFB0B0B0); // Secondary text color
  static const Color _darkTextTertiary = Color(0xFF909090); // Tertiary text color (gray)
  static const Color _darkTextLabel = Color(0xFFB0B0B0); // Label text color
  static const Color _darkTextHint = Color(0xFF707070); // Hint text color
  static const Color _darkSearchBarFill = Color(0xFF2C2C2C); // Search bar fill color
  static const Color _darkSearchHint = Color(0xFF808080); // Search hint text color
  static const Color _darkSearchFill = Color(0xFF2C2C2C); // Alternative search fill color
  static const Color _darkDivider = Color(0xFF424242); // Divider color
  static const Color _darkTabSelected = Color(0xFFFFB74D); // Selected tab label color
  static const Color _darkTabUnselected = Color(0xFF909090); // Unselected tab label color
  static const Color _darkTabIndicator = Color(0xFFFFB74D); // Tab indicator color
  static const Color _darkFabBackground = Color(0xFFFFB74D); // FAB background color
  static const Color _darkNavBarBackground = Color(0xFF1E1E1E); // Bottom nav bar background
  static const Color _darkNavBarIndicator = Color(0xFF424242); // Bottom nav bar indicator
  static const Color _darkNavBarSelected = Color(0xFFFFB74D); // Bottom nav bar selected item
  static const Color _darkDatePickerPrimary = Color(0xFFD4A574); // Date picker primary color
  static const Color _darkDatePickerSurface = Color(0xFF2C2C2C); // Date picker surface color
  static const Color _darkDatePickerText = Color(0xFFE0E0E0); // Date picker text color
  static const Color _darkDatePickerButton = Color(0xFFFFB74D); // Date picker button color
  static const Color _darkWhite87 = Colors.white70; // Standard white70 for dark theme
  static const Color _darkWhite54 = Colors.white54; // Standard white54 for dark theme
  static const Color _darkGrey600 = Color(0xFF9E9E9E); // Grey 600 for dark theme
  static const Color _darkGrey700 = Color(0xFFBDBDBD); // Grey 700 for dark theme
  static const Color _darkTransparent = Colors.transparent; // Transparent
  static const Color _darkBlack = Colors.black; // Black for dark theme
  static const Color _darkWhiteShadow = Colors.white; // White for shadows in dark theme

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
      backgroundColor: _lightNavBarBackground,
      indicatorColor: _lightNavBarIndicator,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: _lightNavBarSelected,
          );
        }
        return const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: _lightGrey600,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(
            color: _lightNavBarSelected,
            size: 24,
          );
        }
        return const IconThemeData(
          color: _lightGrey600,
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

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: _darkPrimary,
      brightness: Brightness.dark,
    ).copyWith(
      surface: _darkSurface,
      primary: _darkPrimary,
      secondary: _darkSecondary,
      tertiary: _darkTertiary,
      error: _darkError,
      onSurface: const Color(0xFFE0E0E0),
      surfaceContainerHighest: _darkSearchBar,
      // Custom property for success color
      surfaceTint: _darkSuccess,
    ),

    // Scaffold background
    scaffoldBackgroundColor: _darkSurface,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: _darkSurface,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: Color(0xFFE0E0E0),
        size: 24,
      ),
      titleTextStyle: TextStyle(
        color: Color(0xFFE0E0E0),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: _darkCardBackground,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      surfaceTintColor: Colors.transparent,
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _darkSecondary,
      foregroundColor: const Color(0xFF1A1A1A),
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
      fillColor: _darkSearchBar,
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
          color: _darkPrimary,
          width: 1.5,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      hintStyle: const TextStyle(
        color: Color(0xFF808080),
        fontSize: 15,
      ),
      prefixIconColor: const Color(0xFF909090),
    ),

    // Tab Bar Theme
    tabBarTheme: const TabBarThemeData(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: _darkPrimary,
      labelColor: Color(0xFFE0E0E0),
      unselectedLabelColor: Color(0xFF909090),
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
      backgroundColor: _darkNavBarBackground,
      indicatorColor: _darkNavBarIndicator,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: _darkNavBarSelected,
          );
        }
        return const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: _darkTabUnselected,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(
            color: _darkNavBarSelected,
            size: 24,
          );
        }
        return const IconThemeData(
          color: _darkTabUnselected,
          size: 24,
        );
      }),
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE0E0E0),
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE0E0E0),
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE0E0E0),
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFE0E0E0),
      ),
      bodyLarge: TextStyle(
        fontSize: 15,
        color: Color(0xFFE0E0E0),
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Color(0xFFE0E0E0),
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFFE0E0E0),
      ),
    ),
  );

  // Light theme custom colors
  static CustomColors lightCustomColors = const CustomColors(
    success: _lightSuccess,
    cardBadge: _lightCardBadge,
    badgeText: _lightBadgeText,
    inputBorder: _lightInputBorder,
    inputBorderFocused: _lightInputBorderFocused,
    searchBarBackground: _lightSearchBar,
    statusBadgeBackground: Color(0xFFFFE4B5),
    statusBadgeText: Color(0xFFD4A574),
    cardBackground: _lightCardBackground,
    orderBadge: _lightOrderBadge,
    textPrimary: _lightTextPrimary,
    textSecondary: _lightTextSecondary,
    textTertiary: _lightTextTertiary,
    textLabel: _lightTextLabel,
    textHint: _lightTextHint,
    searchBarFill: _lightSearchBarFill,
    searchHint: _lightSearchHint,
    searchFill: _lightSearchFill,
    divider: _lightDivider,
    tabSelected: _lightTabSelected,
    tabUnselected: _lightTabUnselected,
    tabIndicator: _lightTabIndicator,
    fabBackground: _lightFabBackground,
    navBarBackground: _lightNavBarBackground,
    navBarIndicator: _lightNavBarIndicator,
    navBarSelected: _lightNavBarSelected,
    datePickerPrimary: _lightDatePickerPrimary,
    datePickerSurface: _lightDatePickerSurface,
    datePickerText: _lightDatePickerText,
    datePickerButton: _lightDatePickerButton,
    black87: _lightBlack87,
    black54: _lightBlack54,
    grey600: _lightGrey600,
    grey700: _lightGrey700,
    transparent: _lightTransparent,
    white: _lightWhite,
    blackShadow: _lightBlackShadow,
  );

  // Dark theme custom colors
  static CustomColors darkCustomColors = const CustomColors(
    success: _darkSuccess,
    cardBadge: _darkCardBadge,
    badgeText: _darkBadgeText,
    inputBorder: _darkInputBorder,
    inputBorderFocused: _darkInputBorderFocused,
    searchBarBackground: _darkSearchBar,
    statusBadgeBackground: Color(0xFF3E2723),
    statusBadgeText: Color(0xFFFFB74D),
    cardBackground: _darkCardBackground,
    orderBadge: _darkOrderBadge,
    textPrimary: _darkTextPrimary,
    textSecondary: _darkTextSecondary,
    textTertiary: _darkTextTertiary,
    textLabel: _darkTextLabel,
    textHint: _darkTextHint,
    searchBarFill: _darkSearchBarFill,
    searchHint: _darkSearchHint,
    searchFill: _darkSearchFill,
    divider: _darkDivider,
    tabSelected: _darkTabSelected,
    tabUnselected: _darkTabUnselected,
    tabIndicator: _darkTabIndicator,
    fabBackground: _darkFabBackground,
    navBarBackground: _darkNavBarBackground,
    navBarIndicator: _darkNavBarIndicator,
    navBarSelected: _darkNavBarSelected,
    datePickerPrimary: _darkDatePickerPrimary,
    datePickerSurface: _darkDatePickerSurface,
    datePickerText: _darkDatePickerText,
    datePickerButton: _darkDatePickerButton,
    black87: _darkWhite87,
    black54: _darkWhite54,
    grey600: _darkGrey600,
    grey700: _darkGrey700,
    transparent: _darkTransparent,
    white: _darkBlack,
    blackShadow: _darkWhiteShadow,
  );

  // Extension for custom colors (backwards compatibility)
  static CustomColors customColors = lightCustomColors;

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
  final Color cardBackground;
  final Color orderBadge;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textLabel;
  final Color textHint;
  final Color searchBarFill;
  final Color searchHint;
  final Color searchFill;
  final Color divider;
  final Color tabSelected;
  final Color tabUnselected;
  final Color tabIndicator;
  final Color fabBackground;
  final Color navBarBackground;
  final Color navBarIndicator;
  final Color navBarSelected;
  final Color datePickerPrimary;
  final Color datePickerSurface;
  final Color datePickerText;
  final Color datePickerButton;
  final Color black87;
  final Color black54;
  final Color grey600;
  final Color grey700;
  final Color transparent;
  final Color white;
  final Color blackShadow;

  const CustomColors({
    required this.success,
    required this.cardBadge,
    required this.badgeText,
    required this.inputBorder,
    required this.inputBorderFocused,
    required this.searchBarBackground,
    required this.statusBadgeBackground,
    required this.statusBadgeText,
    required this.cardBackground,
    required this.orderBadge,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textLabel,
    required this.textHint,
    required this.searchBarFill,
    required this.searchHint,
    required this.searchFill,
    required this.divider,
    required this.tabSelected,
    required this.tabUnselected,
    required this.tabIndicator,
    required this.fabBackground,
    required this.navBarBackground,
    required this.navBarIndicator,
    required this.navBarSelected,
    required this.datePickerPrimary,
    required this.datePickerSurface,
    required this.datePickerText,
    required this.datePickerButton,
    required this.black87,
    required this.black54,
    required this.grey600,
    required this.grey700,
    required this.transparent,
    required this.white,
    required this.blackShadow,
  });
}

// Extension to easily access custom colors
extension CustomColorsExtension on BuildContext {
  CustomColors get customColors {
    final brightness = Theme.of(this).brightness;
    return brightness == Brightness.dark
        ? AppTheme.darkCustomColors
        : AppTheme.lightCustomColors;
  }
}