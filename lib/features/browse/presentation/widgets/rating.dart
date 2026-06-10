import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';

import '../../../../core/utils/app_text_style.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.numberRating,
    required this.appResponsive,
  });

  final double numberRating;
  final AppResponsive appResponsive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$numberRating',
          style: AppTextStyle.style700size16(context)
              .copyWith(
                fontSize: appResponsive.setFontSize(10),
                color: AppColors.blackColor,
              ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2),
          child: Icon(
            Icons.star_sharp,
            size: 10,
            color: AppColors.starColor,
          ),
        ),
      ],
    );
  }
}
