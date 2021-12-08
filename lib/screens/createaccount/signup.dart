import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keleya/helpers/snackbar.dart';
import 'package:keleya/screens/auth_success.dart';
import 'package:keleya/screens/createaccount/name_collection.dart';
import 'package:keleya/screens/login.dart';
import 'package:keleya/utils/colors.dart';
import 'package:keleya/widgets/button.dart';
import 'package:keleya/widgets/header.dart';
import 'package:keleya/widgets/input.dart';

class SignupScreen extends StatefulWidget {
  static const id = '/signup';

  const SignupScreen({Key? key}) : super(key: key);
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool showPassword = true;
  bool hasAgreedToPrivaryPolicy = false;
  bool hasAgreedToTermsandCondition = false;

  dynamic email;
  dynamic password;
  dynamic passwordConfirmation;

  /// On Sign in Button Click
  /// Navigate to Auth Success Screen
  void onSignupPressed() {
    if (email == null || email.isEmpty) {
      toastMessage(context, 'Email address is required');
      return;
    }

    if (password == null || password.isEmpty) {
      toastMessage(context, 'Password is required');
      return;
    }

    if (passwordConfirmation == null || passwordConfirmation.isEmpty) {
      toastMessage(context, 'Confirm password is required');
      return;
    }

    if (hasAgreedToPrivaryPolicy == false) {
      toastMessage(context, 'Privacy policy must be accepted');
      return;
    }

    if (hasAgreedToTermsandCondition == false) {
      toastMessage(context, 'Terms and condition must be accepted');
      return;
    }

    Get.toNamed(NameCollectionScreen.id);
  }

  void gotoLogin() {
    Get.toNamed(LoginScreen.id);
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
                height: 10,
              ),
              const Header(text: 'Welcome to \n Keleya Mama'),
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
                          'Create an account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
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
                        Input(
                            hint: 'Confirm Password',
                            labelTitle: 'Confirm password',
                            show: showPassword,
                            onChange: (value) {
                              setState(() {
                                passwordConfirmation = value;
                              });
                            },
                            onPasswordVisibiltyChange: () {
                              onPasswordVisibilityChanged();
                            },
                            inputType: TextInputType.visiblePassword),
                        const SizedBox(height: 5),
                        Button(
                            text: 'Create an account',
                            onPressed: onSignupPressed),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(children: [
                                Checkbox(
                                  side: const BorderSide(
                                      width: 1.0, color: kInputBorderColor),
                                  value: hasAgreedToPrivaryPolicy,
                                  onChanged: (value) => setState(
                                      () => hasAgreedToPrivaryPolicy = value!),
                                  checkColor: Colors.white,
                                  activeColor: kPrimaryColor,
                                  focusColor: kPrimaryColor,
                                ),
                                RichText(
                                    text: const TextSpan(
                                  text: "I agree the ",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: "privacy policy",
                                        style: TextStyle(color: kPrimaryColor)),
                                  ],
                                ))
                              ]),
                              Row(children: [
                                Checkbox(
                                  side: const BorderSide(
                                      width: 1.0, color: kInputBorderColor),
                                  value: hasAgreedToTermsandCondition,
                                  onChanged: (value) => setState(() =>
                                      hasAgreedToTermsandCondition = value!),
                                  checkColor: Colors.white,
                                  activeColor: kPrimaryColor,
                                  focusColor: kPrimaryColor,
                                ),
                                RichText(
                                    text: const TextSpan(
                                  text: "I agree the ",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: "terms & conditions",
                                        style: TextStyle(color: kPrimaryColor)),
                                    TextSpan(
                                        text: " & ",
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: "keleya's advice",
                                        style: TextStyle(color: kPrimaryColor)),
                                  ],
                                ))
                              ]),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: gotoLogin,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text('Already have an account? ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                Text(
                                  'Sign In',
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 16),
                                )
                              ]),
                        )
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
