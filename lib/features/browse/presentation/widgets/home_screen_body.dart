import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/order_item.dart';
import 'package:gap/gap.dart';
import '../../../../core/utils/app_responsive.dart';
import 'custom_search_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.title,
            style: AppTextStyle.style700size36(context),
          ),
          Gap(26),
          CustomSearchBar(),
          Gap(30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Pizza',
                style: AppTextStyle.style700size16(context),
              ),

              Container(
                margin: EdgeInsets.only(top: 8),
                width: 45,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          Gap(24),

          Expanded(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:
                        appResponsive.widthItem,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    childAspectRatio: .70,
                  ),
              itemCount: 3,
              itemBuilder:
                  (BuildContext context, int index) =>
                      OrderItem(
                        imageOrder:
                            'assets/images/image 4.png',
                        title: 'Cheese Pizza',
                        subTitle: 'Mixed pizza',
                        rating: 4.5,
                        price: 9.99,
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
