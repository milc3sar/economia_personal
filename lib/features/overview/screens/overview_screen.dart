import 'package:economia_personal/config/theme/provider/theme_provider.dart';
import 'package:economia_personal/features/overview/models/tab_overview_option.dart';
import 'package:economia_personal/features/overview/providers/tab_bar_controller.dart';
import 'package:economia_personal/features/overview/screens/widgets/overview_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OverviewScreen extends ConsumerWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeData theme =
        ref.watch(themeNotifierProvider.notifier).getCurrentTheme();
    final localization = AppLocalizations.of(context)!;

    final tabIndex = ref.watch(tabBarControllerProvider);

    return Scaffold(
      appBar: const OverviewAppBar(),
      body: _buildBody(tabIndex),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          child: FloatingActionButton.extended(
            icon: const Icon(Icons.add),
            label: Text(localization.addTransaction),
            onPressed: () {
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildBody(TabOverviewOption tabIndex) {
    switch (tabIndex) {
      case TabOverviewOption.overview:
        return const Center(
          child: Text('Overview Screen'),
        );
      case TabOverviewOption.expense:
        return const Center(
          child: Text('Expense Screen'),
        );
      case TabOverviewOption.list:
        return const Center(
          child: Text('List Screen'),
        );
      default:
        return const Center(
          child: Text('Overview Screen'),
        );
    }
  }
}
