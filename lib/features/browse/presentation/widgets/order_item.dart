import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodi_delivery/core/widgets/custom_image_view.dart';
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
    required this.onTap,
  });

  final String imageOrder;
  final String title;
  final String subTitle;
  final double rating;
  final double price;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: appResponsive.whiteCardWidth,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Card shadow
            Positioned(
              bottom: 0,
              child: Container(
                height: appResponsive.whiteCardHeight,
                width: appResponsive.whiteCardWidth,
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
                height: appResponsive.whiteCardHeight,
                width: appResponsive.whiteCardWidth,
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
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  // image order
                  CustomImageView(
                    image: imageOrder,
                    heightImage: 124,
                    widthImage: 124,
                  ),
                  //--------------------------
                  Gap(appResponsive.setHeight(16)),
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
                        textStyle:
                            AppTextStyle.style700size16(
                              context,
                            ).copyWith(
                              fontSize: appResponsive
                                  .setFontSize(10),
                              color: AppColors.blackColor,
                            ),
                        sizeIcon: 10,
                      ),
                    ],
                  ),
                  Gap(appResponsive.setHeight(6)),
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
                  Gap(appResponsive.setHeight(30)),
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
      ),
    );
  }
}
