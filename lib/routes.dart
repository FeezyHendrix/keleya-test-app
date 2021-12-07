import 'package:flutter/material.dart';
import 'package:keleya/screens/auth_success.dart';
import 'package:keleya/screens/createaccount/date_collection.dart';
import 'package:keleya/screens/createaccount/name_collection.dart';
import 'package:keleya/screens/createaccount/signup.dart';
import 'package:keleya/screens/login.dart';
import 'package:keleya/screens/welcome.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeScreen.id:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const WelcomeScreen());

      case AuthSuccess.id:
        return MaterialPageRoute<dynamic>(builder: (_) => const AuthSuccess());

      case LoginScreen.id:
        return MaterialPageRoute<dynamic>(builder: (_) => const LoginScreen());

      case SignupScreen.id:
        return MaterialPageRoute<dynamic>(builder: (_) => const SignupScreen());

      case NameCollectionScreen.id:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const NameCollectionScreen());

      case DateCollectionScreen.id:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const DateCollectionScreen());

      default:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const WelcomeScreen());
    }
  }
}
