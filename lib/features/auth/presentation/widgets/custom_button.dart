import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.name,
    required this.onPressed,
  });

  final String name;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );

    return MaterialButton(
      elevation: 4,
      height: appResponsive.authButtonHeight,
      minWidth: appResponsive.authButtonWidth,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(28),
      ),
      color: AppColors.primaryColor,
      onPressed: onPressed,
      child: Text(
        name,
        style: AppTextStyle.style700size16(
          context,
        ).copyWith(color: AppColors.whiteColor),
      ),
    );
  }
}
