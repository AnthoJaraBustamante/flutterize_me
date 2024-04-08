import 'package:flutter/material.dart';

enum ColorName {
  primary,
  secondary,
  background,
  text,
  accent,
  grey,
  darkGrey,
  transparentdDark,
  darkGreyBlue,
  darkBlue,
}

class AppColors {
  static const Map<ColorName, Color> _colors = {
    ColorName.primary: Color(0xFF002733),
    ColorName.secondary: Color(0xFF004F66),
    ColorName.background: Color(0xFFE5F9FF),
    ColorName.accent: Color(0xCC001319),
    ColorName.grey: Color(0xFF8E9DA3),
    ColorName.darkGrey: Color(0xB7001319),
    ColorName.transparentdDark: Color(0x3D002733),
    ColorName.darkGreyBlue: Color(0xFF445054),
    ColorName.darkBlue: Color(0xFF004F66),
    
  };

  static Color getColor(ColorName colorName) {
    return _colors[colorName] ?? Colors.transparent;
  }
}
