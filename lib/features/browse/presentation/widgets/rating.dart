import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.numberRating,
    required this.appResponsive,
    required this.textStyle,
    required this.sizeIcon,
  });

  final double numberRating;
  final AppResponsive appResponsive;
  final TextStyle textStyle;
  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$numberRating', style: textStyle),
        Padding(
          padding: EdgeInsets.only(left: 2),
          child: Icon(
            Icons.star_sharp,
            size: sizeIcon,
            color: AppColors.starColor,
          ),
        ),
      ],
    );
  }
}
