import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keleya/helpers/snackbar.dart';
import 'package:keleya/screens/auth_success.dart';
import 'package:keleya/utils/colors.dart';
import 'package:keleya/widgets/button.dart';
import 'package:keleya/widgets/header.dart';
import 'package:keleya/widgets/input.dart';

class LoginScreen extends StatefulWidget {
  static const id = '/login';

  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true;
  dynamic email;
  dynamic password;

  /// On Sign in Button Click
  /// Navigate to Auth Success Screen
  void onSignInPressed() {
    if (email == null || email.isEmpty) {
      toastMessage(context, "Email Address is required");
      return;
    }

    if (password == null || password.isEmpty) {
      toastMessage(context, 'Password is required');
      return;
    }

    Get.toNamed(AuthSuccess.id);
  }

  onPasswordVisibilityChanged() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kPrimaryColor,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Header(text: 'Great to have you \n back!'),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 60),
                        const Text(
                          'Sign in using your keleya \n account info',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 60),
                        Input(
                            hint: 'Email Address',
                            labelTitle: 'Email',
                            onChange: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            inputType: TextInputType.emailAddress),
                        Input(
                            hint: 'Password',
                            labelTitle: 'Password',
                            show: showPassword,
                            onChange: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            onPasswordVisibiltyChange: () {
                              onPasswordVisibilityChanged();
                            },
                            inputType: TextInputType.visiblePassword),
                        const SizedBox(height: 5),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(right: 16),
                          child: GestureDetector(
                            child: const Text(
                              'Forgot your password?',
                              textAlign: TextAlign.right,
                              style: TextStyle(color: kButtonTextVariant),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Button(text: 'Sign in', onPressed: onSignInPressed)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
