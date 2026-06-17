import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class TotalAmountOrder extends StatelessWidget {
  const TotalAmountOrder({
    super.key,
    required this.amount,
    required this.totalItems,
    required this.currency,
  });

  final double amount;
  final int totalItems;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 20),
      child: Row(
        children: [
          Text(
            AppStrings.total,
            style: AppTextStyle.style400size16(context)
                .copyWith(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Text(
              '($totalItems ${AppStrings.items})',
              style: AppTextStyle.style400size14(
                context,
              ).copyWith(color: AppColors.darkGrayColor),
            ),
          ),

          Spacer(),
          Text(
            '\$$amount',
            style: AppTextStyle.style400size24(context),
          ),
          Gap(12),
          Text(
            currency,
            style: AppTextStyle.style400size24(
              context,
            ).copyWith(color: AppColors.darkGrayColor),
          ),
        ],
      ),
    );
  }
}
