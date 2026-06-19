import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class DataEntry extends StatelessWidget {
  const DataEntry({
    super.key,
    required this.title,
    required this.data,
    this.isUnderline = false,
  });

  final String title;
  final String data;
  final bool isUnderline;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        border: isUnderline
            ? Border(
                bottom: BorderSide(
                  color: AppColors.blackColor,
                  width: 1,
                ),
              )
            : null,
      ),
      child: Text.rich(
        TextSpan(
          text: title,
          style: AppTextStyle.style400size16(context)
              .copyWith(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500,
              ),
          children: [
            TextSpan(
              text: '\n$data',
              style: AppTextStyle.style400size16(context)
                  .copyWith(
                    color: AppColors.darkGrayColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
