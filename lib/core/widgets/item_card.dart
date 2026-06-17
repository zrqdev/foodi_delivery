import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:foodi_delivery/core/widgets/custom_image_view.dart';
import 'package:gap/gap.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.appResponsive,
    required this.image,
    required this.title,
    required this.price,
    required this.onTap,
    required this.widget,
  });

  final AppResponsive appResponsive;
  final String image;
  final String title;
  final double price;
  final Function() onTap;
  final Widget widget;

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
                heightShadow: 20,
                widthShadow: 35,
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
        // Favorite Item icon or Quantity counter
        Positioned(right: 32, bottom: 28, child: widget),
      ],
    );
  }
}
