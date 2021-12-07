import 'package:flutter/material.dart';

class AuthSuccess extends StatelessWidget {
  static const id = 'auth_screen';

  const AuthSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/auth_success_bg.png'),
                      fit: BoxFit.cover),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Text(
                    'Congratulations on the new arrival!',
                    style: TextStyle(color: Colors.black),
                  ),
                ))));
  }
}
