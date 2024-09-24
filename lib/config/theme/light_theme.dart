import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    primaryColor: const Color(0xFF6200EE),
    brightness: Brightness.light,
    primaryColorLight: const Color(0xFF3700B3),
    primaryColorDark: const Color(0xFF3700B3),
    dividerColor: const Color(0xFFBDBDBD),
    scaffoldBackgroundColor: const Color(0xFFfcfbff),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyMedium:
          TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Roboto'),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(fontSize: 12, fontFamily: 'Roboto'),
      unselectedLabelStyle: TextStyle(fontSize: 12, fontFamily: 'Roboto'),
      type: BottomNavigationBarType.fixed,
    ),
  );
}
