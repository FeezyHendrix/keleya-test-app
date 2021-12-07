import 'package:flutter/material.dart';
import 'package:keleya/utils/colors.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: kPrimaryColor),
    ),
  );
}
