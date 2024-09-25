import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    dividerColor: Colors.transparent,
    scaffoldBackgroundColor: const Color(0xFFfcfbff),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontFamily: 'Roboto',
      ),
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
