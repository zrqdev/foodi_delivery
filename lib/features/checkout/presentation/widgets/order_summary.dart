import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    super.key,
    required this.title,
    required this.amount,
    required this.currency,
  });

  final String title;
  final double amount;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 4),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyle.style400size16(
                  context,
                ).copyWith(color: AppColors.blackColor),
              ),

              Spacer(),
              Text(
                '\$$amount',
                style: AppTextStyle.style400size16(
                  context,
                ).copyWith(color: AppColors.blackColor),
              ),
              Gap(3),
              Text(
                currency,
                style: AppTextStyle.style400size14(
                  context,
                ).copyWith(color: AppColors.darkGrayColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
