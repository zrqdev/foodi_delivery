import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodi_delivery/core/utils/app_assets.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:gap/gap.dart';

class SignInWith extends StatelessWidget {
  const SignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Divider(
                thickness: 1.5,
                indent: 10,

                color: AppColors.grayColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                AppStrings.signInWith,
                style: AppTextStyle.style400size14(context)
                    .copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkGrayColor,
                    ),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 1.5,
                indent: 10,
                color: AppColors.grayColor,
              ),
            ),
          ],
        ),

        Gap(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(Assets.facebook),
            ),

            Gap(30),

            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(Assets.google),
            ),
          ],
        ),
      ],
    );
  }
}
