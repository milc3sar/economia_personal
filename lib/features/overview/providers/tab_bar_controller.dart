import 'package:economia_personal/features/overview/models/tab_overview_option.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_bar_controller.g.dart';

@riverpod
class TabBarController extends _$TabBarController {
  @override
  TabOverviewOption build() => TabOverviewOption.overview;

  void setTabIndex(TabOverviewOption option) {
    state = option;
  }
}
