import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_image_view.dart';

class FavoriteOrderItem extends StatelessWidget {
  const FavoriteOrderItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.onTap,
  });

  final String image;
  final String title;
  final double price;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Stack(
      children: [
        // Shadow Item
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: appResponsive.setHeight(80),
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 12,
            ),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 2),
                  blurRadius: 10,
                  spreadRadius: -8,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        // Item Card
        Container(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 16,
            right: 16,
            left: 16,
          ),
          margin: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 12,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.blackColor.withAlpha(30),
              width: 0.3,
            ),
            color: AppColors.whiteColor,

            borderRadius: BorderRadius.circular(20),
          ),

          child: Row(
            children: [
              CustomImageView(
                image: image,
                heightImage: 100,
                widthImage: 100,
              ),
              Gap(16),
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.style400size16(
                      context,
                    ).copyWith(color: AppColors.blackColor),
                  ),
                  Gap(8),
                  Text(
                    '$price\$',
                    style:
                        AppTextStyle.style400size16(
                          context,
                        ).copyWith(
                          color: AppColors.primaryColor,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Cancele favorite Item
        Positioned(
          right: 30,
          top: 8,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,

              child: Icon(
                Icons.close_rounded,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        // Favorite Item icon
        Positioned(
          right: 32,
          bottom: 28,
          child: Icon(
            Icons.favorite,
            shadows: [
              Shadow(
                color: AppColors.primaryColor,
                offset: Offset(0, 2),
                blurRadius: 10,
              ),
            ],
            size: 20,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
