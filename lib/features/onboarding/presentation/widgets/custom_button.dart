import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.appResponsive,
  });

  final Function() onPressed;
  final AppResponsive appResponsive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 63,
        bottom: 32,
        right: 55,
        left: 55,
      ),
      child: MaterialButton(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(28),
        ),
        onPressed: onPressed,
        color: AppColors.whiteColor,
        height: appResponsive.heightOnboardingButton,

        minWidth: appResponsive.widthOnboardingButton,
        child: Text(
          AppStrings.getStarted,
          style: AppTextStyle.style700size16(context),
        ),
      ),
    );
  }
}
