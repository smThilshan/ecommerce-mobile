import 'package:ecommerce_mobile/core/configs/theme/app_theme.dart';
import 'package:ecommerce_mobile/presentation/splash/page/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
