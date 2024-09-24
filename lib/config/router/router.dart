import 'package:economia_personal/features/budget/screens/budget_screen.dart';
import 'package:economia_personal/features/navigation_bar/screens/navigation_menu_bar.dart';
import 'package:economia_personal/features/overview/screens/overview_screen.dart';
import 'package:economia_personal/features/tools/screens/tools_screen.dart';
import 'package:economia_personal/features/wallets/screens/wallets_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/', routes: [
    ShellRoute(
        builder: (context, state, child) => Scaffold(
              body: child,
              bottomNavigationBar: const NavigationMenuBar(),
            ),
        routes: [
          GoRoute(
            path: '/',
            name: 'overview',
            builder: (context, state) => Consumer(
              builder: (context, ref, child) => const OverviewScreen(),
            ),
          ),
          GoRoute(
            path: '/budget',
            name: 'budget',
            builder: (context, state) => Consumer(
              builder: (context, ref, child) => const BudgetScreen(),
            ),
          ),
          GoRoute(
            path: '/wallets',
            name: 'wallets',
            builder: (context, state) => Consumer(
              builder: (context, ref, child) => const WalletsScreen(),
            ),
          ),
          GoRoute(
            path: '/tools',
            name: 'tools',
            builder: (context, state) => Consumer(
              builder: (context, ref, child) => const ToolsScreen(),
            ),
          )
        ])
  ]);
});
