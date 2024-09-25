import 'package:economia_personal/features/navigation_bar/models/navigation_bar_option.dart';
import 'package:economia_personal/features/navigation_bar/providers/navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NavigationMenuBar extends ConsumerWidget {
  const NavigationMenuBar({super.key});

  void onTapped(BuildContext context, WidgetRef ref, int index) {
    ref
        .read(navigationIndexNotifierProvider.notifier)
        .setOption(NavigationBarOption.values[index]);
    switch (index) {
      case 0:
        GoRouter.of(context).goNamed('overview');
        break;
      case 1:
        GoRouter.of(context).goNamed('budget');
        break;
      case 2:
        GoRouter.of(context).goNamed('wallets');
        break;
      case 3:
        GoRouter.of(context).goNamed('tools');
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationIndexNotifierProvider).index;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => onTapped(context, ref, index),
      items: NavigationBarOption.values.map((option) {
        return BottomNavigationBarItem(
          icon: Icon(option.icon),
          label: option.name(context),
        );
      }).toList(),
    );
  }
}
