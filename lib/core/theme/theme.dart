import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Colors.lightBlueAccent;

  static const _primaryColorDark = Colors.lightGreenAccent;

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorLight),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorDark),
    // brightness: Brightness.dark,
  );
}

class ThemeClass {
  ThemeClass._();

  static Color lightPrimaryColor = const Color(0xFFDF0054);
  static Color darkPrimaryColor = const Color(0xFF480032);
  static Color secondaryColor = const Color(0xFFFF886A);
  static Color accentColor = const Color(0xFFFFD2BB);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: ThemeClass.lightPrimaryColor,
      secondary: ThemeClass.secondaryColor,
    ),
  );
}
