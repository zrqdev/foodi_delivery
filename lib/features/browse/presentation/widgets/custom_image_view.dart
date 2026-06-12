import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';

class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    required this.appResponsive,
    required this.imageOrder,
  });

  final AppResponsive appResponsive;
  final String imageOrder;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.center,
      child: Image.asset(
        imageOrder,
        height: appResponsive.setHeight(124),
        width: appResponsive.setWidth(124),
      ),
    );
  }
}
