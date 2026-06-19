import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';

class AppTextStyle {
  static TextStyle onboardingTitleStyle(
    BuildContext context,
  ) {
    final responsive = AppResponsive(context: context);

    return TextStyle(
      fontSize: responsive.setFontSize(64),
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor,
      fontFamily: 'Inter',
    );
  }

  static TextStyle style400size14(BuildContext context) {
    final responsive = AppResponsive(context: context);
    return TextStyle(
      fontFamily: 'Supreme',
      fontWeight: FontWeight.w400,
      color: AppColors.whiteColor,
      fontSize: responsive.setFontSize(14),
    );
  }

  static TextStyle style700size16(BuildContext context) {
    final responsive = AppResponsive(context: context);
    return TextStyle(
      fontFamily: 'Supreme',
      fontWeight: FontWeight.w700,
      color: AppColors.primaryColor,
      fontSize: responsive.setFontSize(16),
    );
  }

  static TextStyle style700size36(BuildContext context) {
    final responsive = AppResponsive(context: context);

    return TextStyle(
      fontFamily: 'Supreme',
      fontWeight: FontWeight.w700,
      fontSize: responsive.setFontSize(36),
    );
  }

  static TextStyle style400size16(BuildContext context) {
    final responsive = AppResponsive(context: context);
    return TextStyle(
      fontFamily: 'Supreme',
      fontWeight: FontWeight.w400,
      fontSize: responsive.setFontSize(16),
      color: AppColors.silverColor,
    );
  }

  static TextStyle style400size24(BuildContext context) {
    final responsive = AppResponsive(context: context);
    return TextStyle(
      fontFamily: 'Supreme',
      fontWeight: FontWeight.w400,
      fontSize: responsive.setFontSize(24),
      color: AppColors.blackColor,
    );
  }

  static TextStyle style500size20(BuildContext context) {
    final responsive = AppResponsive(context: context);
    return TextStyle(
      fontSize: responsive.setFontSize(20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Supreme',
      color: AppColors.blackColor,
    );
  }
}
