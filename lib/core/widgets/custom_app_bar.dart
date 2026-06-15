import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_style.dart' show AppTextStyle;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String title;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Padding(
      padding: EdgeInsets.only(
        top: appResponsive.removeTopPadding + 16,
        right: 16,
        left: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
          ),
          Spacer(),
          Text(
            title,
            style: AppTextStyle.style400size24(context),
          ),
          Spacer(),
          Icon(Icons.abc, color: AppColors.whiteColor),
        ],
      ),
    );
  }
}
