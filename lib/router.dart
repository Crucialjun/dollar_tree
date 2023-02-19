import 'package:dollar_tree/features/auth/screens/welcome_screen.dart';
import 'package:dollar_tree/features/common/screens/error_screen.dart';
import 'package:dollar_tree/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
    case WelcomeScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const WelcomeScreen()));
    default:
      return MaterialPageRoute(builder: ((context) => const ErrorScreen()));
  }
}
