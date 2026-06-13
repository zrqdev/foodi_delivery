import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class TextBlock extends StatelessWidget {
  const TextBlock({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.style400size24(
              context,
            ).copyWith(fontSize: 16),
          ),
          Gap(8),
          Text(
            description,
            style: AppTextStyle.style400size14(
              context,
            ).copyWith(color: AppColors.darkGrayColor),
          ),
        ],
      ),
    );
  }
}
