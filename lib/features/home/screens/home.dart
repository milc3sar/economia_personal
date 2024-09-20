import 'package:economia_personal/common/widgets/navigation_menu_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Economía Personal'),
      ),
      bottomNavigationBar: const NavigationMenuBar(currentIndex: 0),
    );
  }
}
