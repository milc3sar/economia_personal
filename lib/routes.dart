import 'package:flutter/material.dart';

import 'features/home/screens/home.dart';

class AppRoutes {
  static const String home = '/';
  static const String budget = '/budget';
  static const String wallets = '/wallets';
  static const String tools = '/tools';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomeScreen(),
  };
}
