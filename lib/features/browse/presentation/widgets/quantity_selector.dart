import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_assets.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Row(
      children: [
        // Decrement button
        GestureDetector(
          onTap: () {
            print('remove ');
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.primaryColor,
                width: 2,
                strokeAlign: BorderSide.strokeAlignInside,
              ),

              shape: BoxShape.circle,
            ),
            child:
                // Padding(
                //   padding: const EdgeInsets.all(4),
                //   child:
                Icon(
                  Icons.remove_rounded,
                  color: AppColors.primaryColor,
                  size: 28,
                  // ),
                ),
          ),
        ),
        // Text counte number
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '02',
            style: AppTextStyle.style700size36(context)
                .copyWith(
                  fontSize: appResponsive.setFontSize(22),
                ),
          ),
        ),
        // increment button
        GestureDetector(
          onTap: () {
            print('plus Order');
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.primaryColor,
                width: 2,
                strokeAlign: BorderSide.strokeAlignInside,
              ),
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor,
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  spreadRadius: -8,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SvgPicture.asset(
                Assets.incrementIcon,
                height: appResponsive.setHeight(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
