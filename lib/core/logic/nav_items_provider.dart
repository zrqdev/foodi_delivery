import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/data/models/nav_item_model.dart';
import 'package:foodi_delivery/features/browse/presentation/screens/home_screen.dart';
import 'package:foodi_delivery/features/wishlist/presentation/screens/wishlist_screen.dart';

class NavItemsProvider with ChangeNotifier {
  int selectedItem = 0;
  int oldItem = 0;

  void changeNavItem(int index) {
    oldItem = selectedItem;
    selectedItem = index;

    notifyListeners();
  }

  List<NavItemModel> items = [
    NavItemModel(
      id: 1,
      enabledIcon: Icons.home_rounded,
      disabledIcon: Icons.home_rounded,
      destination: HomeScreen(),
    ),

    NavItemModel(
      id: 2,
      enabledIcon: Icons.favorite_rounded,
      disabledIcon: Icons.favorite_border_rounded,
      destination: WishlistScreen(),
    ),

    NavItemModel(
      id: 3,
      enabledIcon: Icons.shopping_bag,
      disabledIcon: Icons.shopping_bag_outlined,
      destination: null,
    ),

    NavItemModel(
      id: 4,
      enabledIcon: Icons.person_2_rounded,
      disabledIcon: Icons.person_2_outlined,
      destination: HomeScreen(),
    ),
  ];
}
