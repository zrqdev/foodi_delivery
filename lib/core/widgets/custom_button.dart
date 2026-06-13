import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.name,
    required this.onTap,
  });

  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: appResponsive.authButtonHeight,
        width: appResponsive.authButtonWidth,

        decoration: BoxDecoration(
          color: AppColors.primaryColor,

          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          name,
          style: AppTextStyle.style700size16(
            context,
          ).copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
