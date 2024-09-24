import 'package:economia_personal/config/theme/dark_theme.dart';
import 'package:economia_personal/config/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeData build() {
    return buildLightTheme();
  }

  void toggleTheme() {
    state = state.brightness == Brightness.light
        ? ThemeData.dark()
        : ThemeData.light();
  }

  bool isDarkTheme() {
    return state.brightness == Brightness.dark;
  }

  ThemeData getCurrentTheme() {
    return isDarkTheme() ? buildDarkTheme() : buildLightTheme();
  }
}
