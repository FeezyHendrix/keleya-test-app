import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;

  const Header({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 40),
      textAlign: TextAlign.center,
    );
  }
}
