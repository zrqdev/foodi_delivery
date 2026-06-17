import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/logic/nav_items_provider.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/widgets/custom_app_bar.dart';
import 'package:foodi_delivery/core/widgets/custom_button.dart';
import 'package:foodi_delivery/core/widgets/item_card.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/quantity_selector.dart';
import 'package:foodi_delivery/features/checkout/presentation/widgets/dashed_line.dart'
    show DashedLine;
import 'package:foodi_delivery/features/checkout/presentation/widgets/promp_code_section.dart';
import 'package:foodi_delivery/features/checkout/presentation/widgets/total_amount_order.dart';
import 'package:gap/gap.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'order_summary.dart';

class CheckoutScreenBody extends StatelessWidget {
  const CheckoutScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Column(
      children: [
        // App bar screen
        Selector<NavItemsProvider, int>(
          selector: (context, navitem) => navitem.oldItem,
          builder: (BuildContext context, value, child) =>
              CustomAppBar(
                title: AppStrings.titleCheckoutScreen,
                icon: Icons.arrow_back_ios_new_rounded,
                onPressed: () {
                  context
                      .read<NavItemsProvider>()
                      .changeNavItem(value);
                  context.pop();
                },
              ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 3,
            padding: EdgeInsets.only(top: 2),
            itemBuilder: (context, index) => ItemCard(
              appResponsive: appResponsive,
              image: 'assets/images/image 4.png',
              title: 'Cheese Pizza',
              price: 9.99,
              onTap: () {
                print('cancel');
              },
              widget: QuantitySelector(),
            ),
          ),
        ),

        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 16,
                    right: 16,
                    left: 16,
                  ),
                  child: Column(
                    children: [
                      PromoCodeSection(),

                      OrderSummary(
                        title: AppStrings.subtotal,
                        amount: 22.96,
                        currency: 'USD',
                      ),
                      Divider(height: 10),
                      OrderSummary(
                        title: AppStrings.promoCode,
                        amount: 0,
                        currency: 'USD',
                      ),
                      Divider(height: 10),
                      OrderSummary(
                        title: AppStrings.delivery,
                        amount: 1,
                        currency: 'USD',
                      ),
                      DashedLine(height: 1.5),

                      TotalAmountOrder(
                        amount: 25.96,
                        totalItems: 3,
                        currency: 'USD',
                      ),
                      Gap(40),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: CustomButton(
                          name: AppStrings
                              .titleCheckoutScreen,
                          onTap: () {
                            print('Checkout Order');
                          },
                        ),
                      ),
                      Gap(20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap(appResponsive.removeBottomPadding),
      ],
    );
  }
}
