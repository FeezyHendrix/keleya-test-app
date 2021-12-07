import 'package:flutter/material.dart';
import 'package:keleya/utils/colors.dart';

/// Reusable Button Widget Across Screens
class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool? useCustomBackground;
  final Color? customBackgroundColor;
  final bool? useCustomTextColor;
  final Color? customTextColor;

  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
    this.useCustomBackground,
    this.customBackgroundColor,
    this.useCustomTextColor,
    this.customTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color:
                    useCustomTextColor != null ? customTextColor : Colors.white,
                fontSize: 16),
          ),
          style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              backgroundColor: useCustomBackground != null
                  ? customBackgroundColor
                  : kPrimaryColor,
              fixedSize: const Size.fromHeight(65)),
        ),
      ),
    );
  }
}
