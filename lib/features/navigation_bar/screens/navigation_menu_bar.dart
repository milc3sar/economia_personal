import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenuBar extends StatelessWidget {
  const NavigationMenuBar({super.key});

  void onTapped(BuildContext context, int index) {
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
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) => onTapped(context, index),
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
