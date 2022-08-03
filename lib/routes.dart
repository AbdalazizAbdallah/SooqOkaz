import 'package:flutter/material.dart';
import 'package:sooq_okaz/routes/login_screen.dart';
import 'package:sooq_okaz/routes/splach_screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String loginScreen = '/LoginScreen';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        throw const FormatException('Page not Found');
    }
  }
}