import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/logic/nav_items_provider.dart';
import 'package:provider/provider.dart';

import '../features/browse/presentation/widgets/custom_bottom_nav_bar.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavItemsProvider>(
      builder: (context, navItems, child) => Scaffold(
        body: navItems
            .items[navItems.selectedItem]
            .destination,
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
