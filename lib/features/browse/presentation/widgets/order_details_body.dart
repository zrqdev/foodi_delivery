import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/widgets/custom_button.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/price_and_quantity_selector.dart';
import 'package:gap/gap.dart';
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
        Align(
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
                        blurRadius: 60,
                      ),
                    ],
                    // color: AppColors.blackColor,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/image 4.png',
                height: appResponsive.setHeight(250),
                width: appResponsive.setWidth(250),
              ),
            ],
          ),
        ),
        PriceAndQuantitySelector(
          appResponsive: appResponsive,
        ),
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
        CustomButton(
          name: AppStrings.addToCart,
          onTap: () {
            print('Add to cart');
          },
        ),
        Gap(appResponsive.removeBottomPadding + 16),
      ],
    );
  }
}
