import 'package:flutter/material.dart';
import 'package:foodi_delivery/features/browse/logic/nav_items.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        height: 70,
        color: AppColors.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            navItems.items.length,
            (index) => buildIconNavBarItem(
              isActive: navItems.itemSelected == index
                  ? true
                  : false,
              icon: navItems.items[index].icon,
              onPressed: () {
                print('index is $index');
                navItems.changeNavItem(index);
                context.push(
                  navItems.items[index].destenation,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Container buildIconNavBarItem({
    required IconData icon,
    required Function() onPressed,
    bool isActive = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: AppColors.primaryColor,
                  offset: Offset(0, 10),
                  spreadRadius: -18,
                  blurRadius: 20,
                ),
              ]
            : null,
      ),
      child: IconButton(
        isSelected: isActive,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: isActive
              ? AppColors.primaryColor
              : AppColors.silverChaliceColor,
          size: 30,
        ),
      ),
    );
  }
}
