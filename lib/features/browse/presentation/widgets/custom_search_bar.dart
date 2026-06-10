import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 28,
            ),
            decoration: BoxDecoration(
              color: AppColors.lightSilverColor,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  Assets.searchIcon,
                  height: 22,
                ),
                Gap(10),
                Text(
                  AppStrings.search,
                  style:
                      AppTextStyle.style700size16(
                        context,
                      ).copyWith(
                        color: AppColors.darkGrayColor,
                      ),
                ),
              ],
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 18,
          ),

          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(28),
          ),
          child: SvgPicture.asset(
            Assets.filterIcon,
            height: 22,
          ),
        ),
      ],
    );
  }
}
