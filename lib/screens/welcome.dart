import 'package:flutter/material.dart';
import 'package:keleya/utils/colors.dart';
import 'package:keleya/widgets/button.dart';
import 'package:keleya/widgets/header.dart';
import 'package:get/get.dart';

import 'auth_success.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = '/welcome';

  const WelcomeScreen({Key? key}) : super(key: key);

  /// On Login Button Click
  /// Navigate to Auth Success Screen
  void onLoginClick() {
    Get.toNamed(AuthSuccess.id);
  }

  void onSignupClick() {}

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
              const Header(text: 'Are you already a Keleya user?'),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Button(
                          text: 'Yes, log in with my keleya details',
                          onPressed: onLoginClick),
                      const SizedBox(
                        height: 30,
                      ),
                      Button(
                        text: 'No, create new account',
                        onPressed: onSignupClick,
                        useCustomBackground: true,
                        customBackgroundColor: kButtonVariant,
                        useCustomTextColor: true,
                        customTextColor: kButtonTextVariant,
                      ),
                    ],
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
