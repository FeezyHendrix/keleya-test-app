import 'package:flutter/material.dart';

class AuthSuccess extends StatelessWidget {
  static const id = 'auth_screen';

  const AuthSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 30,
                      ),
                      child: Text(
                        'Congratulations on the \n new arrival!',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset('assets/images/auth_success_bg.png'),
                  ],
                ))));
  }
}
