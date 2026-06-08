import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AppTextStyle.style400size14(context)
            .copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
            ),
      ),
    );
  }
}
