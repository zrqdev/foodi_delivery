import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';

class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    required this.image,
    required this.heightImage,
    required this.widthImage,
  });

  final String image;
  final double heightImage;
  final double widthImage;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: appResponsive.setWidth(30),
              width: appResponsive.setWidth(80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackColor,

                    blurRadius: 55,
                    spreadRadius: -2,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            height: appResponsive.setHeight(heightImage),
            width: appResponsive.setWidth(widthImage),
          ),
        ],
      ),
    );
  }
}
