import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_bar_provider.g.dart';

@riverpod
class NavigationIndexNotifier extends _$NavigationIndexNotifier {
  @override
  int build() => 0;

  void setIndex(int index) {
    state = index;
  }
}
