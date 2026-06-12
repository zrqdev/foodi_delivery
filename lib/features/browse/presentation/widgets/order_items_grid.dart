import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/router/app_router.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_responsive.dart';
import 'order_item.dart';

class OrderItemsGrid extends StatelessWidget {
  const OrderItemsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 16,
        ),
        // clipBehavior: Clip.none,
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent:
                  appResponsive.whiteCardWidth,
              crossAxisSpacing: appResponsive.setWidth(20),
              mainAxisSpacing: appResponsive.setHeight(
                20,
              ), // Height Spacing
              childAspectRatio:
                  appResponsive.dynamicAspectRatio,
            ),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) =>
            OrderItem(
              imageOrder: 'assets/images/image 4.png',
              title: 'Cheese Pizza',
              subTitle: 'Mixed pizza',
              rating: 4.5,
              price: 9.99,
              onTap: () =>
                  context.push(AppRouter.kOrderDetails),
            ),
      ),
    );
  }
}
