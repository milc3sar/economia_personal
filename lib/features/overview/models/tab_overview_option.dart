import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum TabOverviewOption {
  overview,
  expense,
  list,
}

extension TabOptionExtension on TabOverviewOption {
  String label(BuildContext context) {
    switch (this) {
      case TabOverviewOption.overview:
        return AppLocalizations.of(context)!.overview.toUpperCase();
      case TabOverviewOption.expense:
        return AppLocalizations.of(context)!.expense.toUpperCase();
      case TabOverviewOption.list:
        return AppLocalizations.of(context)!.list.toUpperCase();
    }
  }
}
