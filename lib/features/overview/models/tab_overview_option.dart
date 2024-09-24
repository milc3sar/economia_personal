enum TabOverviewOption {
  overview,
  expense,
  list,
}

extension TabOptionExtension on TabOverviewOption {
  String get label {
    switch (this) {
      case TabOverviewOption.overview:
        return 'Vista General'.toUpperCase();
      case TabOverviewOption.expense:
        return 'Gasto'.toUpperCase();
      case TabOverviewOption.list:
        return 'Lista'.toUpperCase();
    }
  }
}
