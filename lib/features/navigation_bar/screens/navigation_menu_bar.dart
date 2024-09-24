import 'package:economia_personal/features/navigation_bar/providers/navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenuBar extends ConsumerWidget {
  const NavigationMenuBar({super.key});

  void onTapped(BuildContext context, WidgetRef ref, int index) {
    ref.read(navigationIndexNotifierProvider.notifier).setIndex(index);
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
    final currnetIndex = ref.watch(navigationIndexNotifierProvider);

    return BottomNavigationBar(
      currentIndex: currnetIndex,
      onTap: (index) => onTapped(context, ref, index),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Iconsax.eye), label: "Vista General"),
        BottomNavigationBarItem(
            icon: Icon(Iconsax.chart_2), label: "Presupuesto"),
        BottomNavigationBarItem(icon: Icon(Iconsax.wallet), label: "Carteras"),
        BottomNavigationBarItem(
            icon: Icon(Iconsax.strongbox), label: "Herramientas"),
      ],
    );
  }
}
