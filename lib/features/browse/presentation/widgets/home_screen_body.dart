import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_responsive.dart';
import 'custom_search_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.title,
            style: AppTextStyle.style700size36(context),
          ),
          Gap(26),
          CustomSearchBar(),
          Gap(30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Pizza',
                style: AppTextStyle.style700size16(context),
              ),

              Container(
                margin: EdgeInsets.only(top: 8),
                width: 45,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          Gap(24),
          SizedBox(
            width: appResponsive.widthItem,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: appResponsive.heighItem,
                    width: appResponsive.widthItem,
                    decoration: BoxDecoration(
                      color: AppColors.lightSilverColor,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentGeometry.center,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/images/image 4.png',
                            height: 128,
                            width: 124,
                          ),
                        ),
                      ),
                      Gap(16),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cheese Pizza',
                            style:
                                AppTextStyle.style700size16(
                                  context,
                                ).copyWith(
                                  color:
                                      AppColors.blackColor,
                                ),
                          ),
                          Text(
                            '4.5 ⭐',
                            style:
                                AppTextStyle.style700size16(
                                  context,
                                ).copyWith(
                                  fontSize: appResponsive
                                      .setFontSize(10),
                                  color:
                                      AppColors.blackColor,
                                ),
                          ),
                        ],
                      ),
                      Gap(10),
                      Text(
                        "Mixed pizza",
                        style:
                            AppTextStyle.style400size14(
                              context,
                            ).copyWith(
                              color:
                                  AppColors.darkGrayColor,
                            ),
                      ),
                      Gap(25),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_forward),
                          Text(
                            '9.99\$',
                            style:
                                AppTextStyle.style700size16(
                                  context,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
