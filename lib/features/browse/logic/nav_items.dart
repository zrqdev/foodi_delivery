import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/router/app_router.dart';
import 'package:foodi_delivery/features/browse/data/models/nav_item.dart';

class NavItems with ChangeNotifier {
  int itemSelected = 1;

  void changeNavItem(int index) {
    itemSelected = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: Icons.home_rounded,
      destenation: AppRouter.kHome,
    ),
    NavItem(
      id: 2,
      icon: Icons.favorite_border,
      destenation: AppRouter.kWishlist,
    ),
    NavItem(
      id: 3,
      icon: Icons.shopping_bag_outlined,
      destenation: AppRouter.kHome,
    ),
    NavItem(
      id: 4,
      icon: Icons.person_3_outlined,
      destenation: AppRouter.kHome,
    ),
  ];
}
