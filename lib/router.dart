import 'package:dollar_tree/features/add_loan_entry/screens/add_loan_screen.dart';
import 'package:dollar_tree/features/auth/screens/sign_in_screen.dart';
import 'package:dollar_tree/features/auth/screens/sign_up_screen.dart';
import 'package:dollar_tree/features/auth/screens/welcome_screen.dart';
import 'package:dollar_tree/features/common/screens/error_screen.dart';
import 'package:dollar_tree/features/dashboard/screens/dashboard_screen.dart';
import 'package:dollar_tree/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
    case WelcomeScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const WelcomeScreen()));
    case SigninScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const SigninScreen()));
    case SignupScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const SignupScreen()));
    case DashboardScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const DashboardScreen()));
    case AddLoanScreen.routeName:
      return MaterialPageRoute(builder: ((context) => const AddLoanScreen()));
    default:
      return MaterialPageRoute(builder: ((context) => const ErrorScreen()));
  }
}
