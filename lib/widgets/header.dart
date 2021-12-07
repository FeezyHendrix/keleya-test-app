import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;

  const Header({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
