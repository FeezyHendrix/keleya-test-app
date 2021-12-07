import 'package:flutter/material.dart';
import 'package:keleya/utils/colors.dart';

class Input extends StatelessWidget {
  final String hint;
  final String labelTitle;
  final TextInputType inputType;
  final bool? show;
  final VoidCallback? onPasswordVisibiltyChange;
  final TextEditingController? controller;

  const Input({
    Key? key,
    required this.hint,
    required this.labelTitle,
    required this.inputType,
    this.show,
    this.controller,
    this.onPasswordVisibiltyChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: TextFormField(
        keyboardType: inputType,
        obscureText: show ?? false,
        style: const TextStyle(
          fontSize: 15,
        ),
        decoration: InputDecoration(
          suffixIcon: show != null
              ? IconButton(
                  onPressed: onPasswordVisibiltyChange,
                  icon: show == false
                      ? const Icon(
                          Icons.visibility,
                          color: kButtonTextVariant,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: kButtonTextVariant,
                        ),
                )
              : null,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          labelText: hint,
          labelStyle: const TextStyle(
              color: kInputBorderColor,
              fontSize: 12,
              fontWeight: FontWeight.w600),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
                color: Color.fromRGBO(102, 102, 102, 0.24), width: 1),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
                color: Color.fromRGBO(102, 102, 102, 0.24), width: 1),
          ),
        ),
      ),
    );
  }
}
