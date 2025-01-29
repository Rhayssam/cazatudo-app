// Essenciais
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  // Gradients
  static const List<Color> orangeGradient = [
    Color(0xFFF16C04),
    Color(0xFFBD6207),
  ];
  static const List<Color> darkOrangeGradient = [
    Color(0xFFFEA06D),
    Color(0xFFFF5B02),
    Color(0xFFFF5900),
  ];
  static const List<Color> greyGradient = [
    Color(0xFFB5B5B5),
    Color(0xFF7F7F7F)
  ];

  // Background
  static const Color background = Color(0xFFEEEEEE);
  static const Color mainColor = Color(0xFFFF5900);

  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color iceWhite = Color(0xFFDEDEDE);
  static const Color grey = Color(0xFF666666);
  static const Color lightGrey = Color(0xFF9B9B9B);
  static const Color darkGrey = Color(0xFF444444);
  static const Color black = Color(0xFF000000);

  // Colors
  static const Color orange1 = Color(0xFFF16C04);
  static const Color lightOrange = Color(0xFFFFC3A3);

  static final ThemeData theme = ThemeData(
    primaryColor: Color(0xFFF16C04),
    primaryColorDark: Color(0xFF444444),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF16C04),
      ),
    ),
  );
}
