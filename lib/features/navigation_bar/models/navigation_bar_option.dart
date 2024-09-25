import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strings/strings.dart';

enum NavigationBarOption {
  overview,
  budget,
  wallets,
  tools,
}

extension NavigationBarOptionExtension on NavigationBarOption {
  String name(BuildContext context) {
    switch (this) {
      case NavigationBarOption.overview:
        return Strings.toCapitalised(AppLocalizations.of(context)!.overview);
      case NavigationBarOption.budget:
        return Strings.toCapitalised(AppLocalizations.of(context)!.budget);
      case NavigationBarOption.wallets:
        return Strings.toCapitalised(AppLocalizations.of(context)!.wallets);
      case NavigationBarOption.tools:
        return Strings.toCapitalised(AppLocalizations.of(context)!.tools);
    }
  }

  IconData get icon {
    switch (this) {
      case NavigationBarOption.overview:
        return Iconsax.eye;
      case NavigationBarOption.budget:
        return Iconsax.chart_2;
      case NavigationBarOption.wallets:
        return Iconsax.wallet;
      case NavigationBarOption.tools:
        return Iconsax.strongbox;
    }
  }
}
