import 'package:flutter/material.dart';
import 'package:keleya/screens/auth_success.dart';
import 'package:keleya/screens/welcome.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeScreen.id:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const WelcomeScreen());

      case AuthSuccess.id:
        return MaterialPageRoute<dynamic>(builder: (_) => const AuthSuccess());
      default:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const WelcomeScreen());
    }
  }
}
