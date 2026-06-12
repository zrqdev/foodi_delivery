import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/quantity_selector.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final AppResponsive appResponsive = AppResponsive(
      context: context,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: appResponsive.setWidth(35),
                width: appResponsive.setWidth(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blackColor,
                      blurRadius: 50,
                    ),
                  ],
                  // color: AppColors.blackColor,
                ),
              ),
            ),
            Image.asset(
              'assets/images/image 4.png',
              height: appResponsive.setHeight(250),
              width: appResponsive.setWidth(250),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '9.99\$',
                style: AppTextStyle.style700size36(
                  context,
                ).copyWith(color: AppColors.primaryColor),
              ),

              QuantitySelector(
                appResponsive: appResponsive,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
