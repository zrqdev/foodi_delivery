import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/router/app_router.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/logic/nav_items_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Container(
      margin: EdgeInsets.only(
        bottom: appResponsive.removeBottomPadding,
      ),
      height: 65,
      child: Consumer<NavItemsProvider>(
        builder: (context, navItems, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            navItems.items.length,
            (index) => navItemBottom(
              isActive: navItems.selectedItem == index,
              onPressed: () {
                print(
                  'old item is and index is ${navItems.oldItem}',
                );
                navItems.changeNavItem(index);

                if (null ==
                    navItems.items[index].destination) {
                  context.push(AppRouter.kCheckout);
                }
              },
              enabledIcon:
                  navItems.items[index].enabledIcon,
              disabledIcon:
                  navItems.items[index].disabledIcon,
            ),
          ),
        ),
      ),
    );
  }

  IconButton navItemBottom({
    required Function() onPressed,
    required IconData enabledIcon,
    required IconData disabledIcon,
    bool isActive = false,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isActive ? enabledIcon : disabledIcon,
        shadows: isActive
            ? [
                Shadow(
                  color: AppColors.primaryColor,
                  offset: Offset(0, 5),
                  blurRadius: 30,
                ),
              ]
            : null,
        size: 28,
        color: isActive
            ? AppColors.primaryColor
            : AppColors.darkGrayColor,
      ),
    );
  }
}
