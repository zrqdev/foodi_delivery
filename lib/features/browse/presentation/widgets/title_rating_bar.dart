import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_responsive.dart';
import '../../../../core/utils/app_text_style.dart';
import 'rating.dart';

class TitleRatingBar extends StatelessWidget {
  const TitleRatingBar({
    super.key,
    required this.appResponsive,
  });

  final AppResponsive appResponsive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            'Cheese Pizza',
            style: AppTextStyle.style400size24(context),
          ),
          Gap(30),
          Rating(
            numberRating: 4.5,
            appResponsive: appResponsive,
            textStyle: AppTextStyle.style400size24(context),
            sizeIcon: 30,
          ),
        ],
      ),
    );
  }
}
