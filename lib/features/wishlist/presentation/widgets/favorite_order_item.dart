import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_responsive.dart';
import '../../../../core/widgets/item_card.dart';

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
    return ItemCard(
      appResponsive: appResponsive,
      image: image,
      title: title,
      price: price,
      onTap: onTap,
      widget: Icon(
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
    );
  }
}
