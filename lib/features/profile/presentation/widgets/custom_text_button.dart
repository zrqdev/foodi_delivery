import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12,
      right: 66,
      child: InkWell(
        onTap: () {
          print('Edit Profile');
        },
        child: Text(
          title,
          style: AppTextStyle.style400size16(
            context,
          ).copyWith(color: AppColors.blackColor),
        ),
      ),
    );
  }
}
