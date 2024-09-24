import 'package:economia_personal/config/router/router.dart';
import 'package:economia_personal/config/theme/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainClass()));
}

class MainClass extends ConsumerWidget {
  const MainClass({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final theme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Economía Personal',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: theme,
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
    );
  }
}