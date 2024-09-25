import 'package:economia_personal/features/overview/models/tab_overview_option.dart';
import 'package:economia_personal/features/overview/providers/tab_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:strings/strings.dart';

class OverviewAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const OverviewAppBar({super.key});

  @override
  OverviewAppBarState createState() => OverviewAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 70);
}

class OverviewAppBarState extends ConsumerState<OverviewAppBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: TabOverviewOption.values.length,
        vsync: this,
        initialIndex: ref.read(tabBarControllerProvider).index);

    _tabController.addListener(() {
      ref
          .read(tabBarControllerProvider.notifier)
          .setTabIndex(TabOverviewOption.values[_tabController.index]);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabIndex = ref.watch(tabBarControllerProvider);
    final localization = AppLocalizations.of(context)!;

    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFF3478db), Color(0xFF52bbf9)]),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Iconsax.setting),
          Text.rich(
            TextSpan(
              text: "${Strings.toCapitalised(localization.overview)}: ",
              children: const [
                TextSpan(
                  text: "Mi Hogar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Icon(Iconsax.arrow_down_1, size: 21),
                  ),
                ),
              ],
            ),
          ),
          const Icon(Iconsax.search_normal),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(30.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: TabBar(
            splashFactory: NoSplash.splashFactory,
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(30),
            ),
            dividerHeight: 0,
            tabAlignment: TabAlignment.center,
            controller: _tabController,
            tabs: TabOverviewOption.values
                .map((tab) => Tab(text: tab.label(context)))
                .toList(),
          ),
        ),
      ),
    );
  }
}
