import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';
import '../../../../core/utils/app_text_style.dart';
import 'quantity_selector.dart';

class PriceAndQuantitySelector extends StatelessWidget {
  const PriceAndQuantitySelector({
    super.key,
    required this.appResponsive,
  });

  final AppResponsive appResponsive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '9.99\$',
            style: AppTextStyle.style700size36(
              context,
            ).copyWith(color: AppColors.primaryColor),
          ),

          QuantitySelector(appResponsive: appResponsive),
        ],
      ),
    );
  }
}
