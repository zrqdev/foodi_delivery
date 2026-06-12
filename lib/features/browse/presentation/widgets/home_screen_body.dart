import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/order_items_grid.dart';
import 'package:gap/gap.dart';

import 'custom_search_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            AppStrings.title,
            style: AppTextStyle.style700size36(context),
          ),
        ),
        Gap(26),
        CustomSearchBar(),
        Gap(30),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Pizza',
                style: AppTextStyle.style700size16(context),
              ),

              Container(
                margin: EdgeInsets.only(top: 8),
                width: 45,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        Gap(24),
        OrderItemsGrid(),
      ],
    );
  }
}
