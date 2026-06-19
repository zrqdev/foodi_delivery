import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';

class AvatarSelection extends StatelessWidget {
  const AvatarSelection({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Stack(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(
            top: 10,
            bottom: 10,
            end: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(28),

            image: DecorationImage(
              image: AssetImage('assets/images/ava.png'),
            ),
          ),

          height: appResponsive.setHeight(130),
          width: appResponsive.setHeight(130),
        ),

        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.darkGrayColor,
                  offset: Offset(0, 2),
                  blurRadius: 20,
                  spreadRadius: -10,
                ),
              ],
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.camera_alt,
              color: AppColors.silverChaliceColor,
            ),
          ),
        ),
      ],
    );
  }
}
