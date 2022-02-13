import 'package:flutter/material.dart';

abstract class MezuriTheme {
  static MaterialColor primarySwatch = const MaterialColor(
    0xFF1958B1,
    <int, Color>{
      50: Color(0xFFE0F7FA),
      100: Color(0xFFB2EBF2),
      200: Color(0xFF80DEEA),
      300: Color(0xFF4DD0E1),
      400: Color(0xFF26C6DA),
      500: Color(0xFF00BCD4),
      600: Color(0xFF00ACC1),
      700: Color(0xFF0097A7),
      800: Color(0xFF00838F),
      900: Color(0xFF004D40),
    },
  );

  static Color primaryColor = const Color(0xFF1958B1);
  static Color primaryVariantColor = const Color(0xFF15BBC6);

  static final lightTheme = ThemeData(colorSchemeSeed: primaryColor);

  static final darkTheme = ThemeData(
    colorSchemeSeed: primaryVariantColor,
    brightness: Brightness.dark,
  );

  static LinearGradient scaffoldGradientBackground = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      primaryColor,
      primaryVariantColor,
    ],
  );
}
