import 'package:economia_personal/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenuBar extends StatelessWidget {

  const NavigationMenuBar({super.key, required this.currentIndex});

  final int currentIndex;

  void onTabTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, AppRoutes.home);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, AppRoutes.budget);
        break;
      case 2:
        Navigator.pushReplacementNamed(context, AppRoutes.wallets);
        break;
      case 3:
        Navigator.pushReplacementNamed(context, AppRoutes.tools);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => onTabTapped(context, index),
      backgroundColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.eye),
          label: 'Vista General',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.chart_2),
          label: 'Presupuesto',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.wallet),
          label: 'Carteras',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.strongbox),
          label: 'Herramientas',
        ),
      ],
    );
  }
}
