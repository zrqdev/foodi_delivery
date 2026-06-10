import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';
import '../../../../core/utils/app_text_style.dart';
import 'rating.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.imageOrder,
    required this.title,
    required this.subTitle,
    required this.rating,
    required this.price,
  });

  final String imageOrder;
  final String title;
  final String subTitle;
  final double rating;
  final double price;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return SizedBox(
      width: appResponsive.widthItem,
      child: Stack(
        children: [
          // Card shadow
          Positioned(
            bottom: 0,
            child: Container(
              height: appResponsive.heighItem,
              width: appResponsive.widthItem,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.darkGrayColor
                        .withAlpha(80),
                    offset: Offset(0, 60),
                    blurRadius: 60,
                    spreadRadius: -10,
                  ),
                ],
                // borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          // white card
          Positioned(
            bottom: 0,
            child: Container(
              height: appResponsive.heighItem,
              width: appResponsive.widthItem,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image order
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Image.asset(
                    imageOrder,
                    height: appResponsive.setHeight(124),
                    width: appResponsive.setWidth(124),
                  ),
                ),
                Gap(16),
                // Title and rating order
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style:
                          AppTextStyle.style700size16(
                            context,
                          ).copyWith(
                            color: AppColors.blackColor,
                          ),
                    ),
                    Spacer(),
                    Rating(
                      numberRating: rating,
                      appResponsive: appResponsive,
                    ),
                  ],
                ),
                Gap(10),
                // Subtitle
                Text(
                  subTitle,
                  style:
                      AppTextStyle.style400size14(
                        context,
                      ).copyWith(
                        color: AppColors.darkGrayColor,
                      ),
                ),
                Gap(25),
                // Icon arrow and price
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Assets.arrowIcon),
                    Text(
                      '$price\$',
                      style: AppTextStyle.style700size16(
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
    );
  }
}
