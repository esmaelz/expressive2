import 'package:flutter/material.dart';
import 'package:expressive2/models/order.dart';
import 'package:expressive2/screens/order_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pedidos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          surface: const Color(0xFFE5F3F5), // Light teal background like Google Wallet
          primary: const Color(0xFF006A6A), // Teal primary
          secondary: const Color(0xFFFFB74D), // Orange for badges
          tertiary: const Color(0xFF4CAF50), // Green for values
          onSurface: const Color(0xFF1A1C1E),
          surfaceContainerHighest: const Color(0xFFE8DFD0), // Beige for search bar
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xFFFFB74D), // Orange FAB
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFFE8DFD0), // Beige search field
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        tabBarTheme: const TabBarThemeData(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Color(0xFFFFB74D),
          labelColor: Colors.black87,
          unselectedLabelColor: Colors.black54,
          labelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const OrderListScreen(),
    );
  }
}
