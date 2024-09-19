import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  // Light Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(
      color: Colors.black,
    ),
    selectedColor: const Color(0xff22b573),
    padding: const EdgeInsets.all(12.0),
    checkmarkColor: Colors.white,
  );

  // Dark Theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(
      color: Colors.white,
    ),
    selectedColor: Color(0xff22b573),
    padding: EdgeInsets.all(12.0),
    checkmarkColor: Colors.white,
  );
}
