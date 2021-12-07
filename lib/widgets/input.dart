import 'package:flutter/material.dart';
import 'package:keleya/utils/colors.dart';

class Input extends StatelessWidget {
  final String hint;
  final String labelTitle;
  final TextInputType inputType;
  final bool? show;
  final TextEditingController? controller;

  const Input({
    Key? key,
    required this.hint,
    required this.labelTitle,
    required this.inputType,
    this.show,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: this.labelTitle,
      ),
    );
  }
}
