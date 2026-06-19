import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class FullNameDisplay extends StatelessWidget {
  const FullNameDisplay({
    super.key,
    required this.fullName,
  });

  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.blackColor,
            width: 1.5,
          ),
        ),
      ),
      child: Text(
        fullName,
        style: AppTextStyle.style500size20(context),
      ),
    );
  }
}
