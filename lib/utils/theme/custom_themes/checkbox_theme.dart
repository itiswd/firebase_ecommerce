import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._();

  // Light Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    checkColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        }
        return Colors.black;
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        }
        return Colors.transparent;
      },
    ),
  );

  // Dark Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    checkColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        }
        return Colors.black;
      },
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        }
        return Colors.transparent;
      },
    ),
  );
}
