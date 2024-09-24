import 'package:flutter/material.dart';

ThemeData buildDarkTheme() {
  return ThemeData(
    brightness: Brightness.light,
    dividerColor: const Color(0xFFBDBDBD),
    scaffoldBackgroundColor: const Color(0xFF232031),
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
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
    ),
  );
}