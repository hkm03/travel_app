import 'package:flutter/material.dart';
import 'package:travel_app/routes/route_names.dart';
import 'package:travel_app/views/screens/authentication/login_screen.dart';
import 'package:travel_app/views/screens/start/onboarding_screen.dart';
import 'package:travel_app/views/screens/start/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Start
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case RouteNames.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case RouteNames.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
        

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("404"),
            ),
          ),
        );
    }
  }
}
