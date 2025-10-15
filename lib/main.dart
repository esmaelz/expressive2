import 'package:flutter/material.dart';
import 'package:expressive2/theme/app_theme.dart';
// import 'package:expressive2/theme/labs/app_theme_imp.dart';
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
      theme: AppTheme.lightTheme,
      home: const OrderListScreen(),
    );
  }
}