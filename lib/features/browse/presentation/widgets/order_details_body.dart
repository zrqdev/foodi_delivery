import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/widgets/custom_button.dart';
import 'package:foodi_delivery/core/widgets/custom_image_view.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/custom_app_bar.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/price_and_quantity_selector.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'text_block.dart';
import 'title_rating_bar.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final AppResponsive appResponsive = AppResponsive(
      context: context,
    );

    return Column(
      children: [
        // ----- App Bar -----
        CustomAppBar(
          leadingIcon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          leadingOnPressed: () {
            print('back to icon order details screen');

            context.pop();
          },
          actionIcon: Icon(Icons.favorite_outline_rounded),
          actionOnPressed: () {
            print('Favorite icon order details screen');
          },
        ),

        // ----- Image Order View -----
        CustomImageView(
          image: 'assets/images/image 4.png',
          heightImage: 250,
          widthImage: 250,
          heightShadow: 20,
          widthShadow: 60,
        ),

        PriceAndQuantitySelector(),
        TitleRatingBar(appResponsive: appResponsive),

        TextBlock(
          title: AppStrings.titleDescription,
          description:
              'The base consists of a thin or thick crust made from dough, which is spread with tomato sauce before adding the cheese. It\'s a classic dish enjoyed worldwide for its simple yet satisfying combination of flavors. Additional seasonings such as oregano, basil, and garlic',
        ),
        Gap(16),
        TextBlock(
          title: AppStrings.titleDeliveryInfo,
          description:
              'Delivered between Sunday aug and Friday from 8pm to 00:00 pm',
        ),

        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: CustomButton(
            name: AppStrings.addToCart,
            onTap: () {
              print('Add to cart');
            },
          ),
        ),
        Gap(appResponsive.removeBottomPadding + 16),
      ],
    );
  }
}
