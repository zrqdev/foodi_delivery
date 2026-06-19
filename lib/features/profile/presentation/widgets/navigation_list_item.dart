import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class NavigationListItem extends StatelessWidget {
  const NavigationListItem({
    super.key,
    required this.title,
    required this.onTap,
    this.itemColor = AppColors.whiteColor,
    this.textColor = AppColors.blackColor,
  });

  final String title;
  final Function() onTap;
  final Color itemColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20,
          left: 50,
          right: 50,
        ),
        padding: EdgeInsets.all(23),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withAlpha(20),
              offset: Offset(0, 20),
              blurRadius: 20,
              spreadRadius: -10,
            ),
          ],
          color: itemColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: AppTextStyle.style400size16(
                context,
              ).copyWith(color: textColor),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
