import 'package:economia_personal/config/theme/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OverviewScreen extends ConsumerWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeData theme =
        ref.watch(themeNotifierProvider.notifier).getCurrentTheme();

    return Scaffold(
      appBar: AppBar(
        title: Text('Overview'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFF3478db), Color(0xFF52bbf9)]),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Overview'),
        ),
      ),
    );
  }
}