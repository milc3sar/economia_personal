import 'package:economia_personal/features/navigation_bar/models/navigation_bar_option.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_bar_provider.g.dart';

@riverpod
class NavigationIndexNotifier extends _$NavigationIndexNotifier {
  @override
  NavigationBarOption build() => NavigationBarOption.overview;

  void setOption(NavigationBarOption option) {
    state = option;
  }
}
