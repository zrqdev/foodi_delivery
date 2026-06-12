import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/widgets/custom_icon_button.dart';
import 'package:foodi_delivery/features/browse/presentation/widgets/order_details_body.dart';
import 'package:go_router/go_router.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        forceMaterialTransparency: false,
        leading: CustomIconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icons.arrow_back_ios_new_rounded,
        ),

        actions: [
          CustomIconButton(
            onPressed: () {
              print("Favorite icon click");
            },
            icon: Icons.favorite_border,
          ),
        ],
      ),

      body: OrderDetailsBody(),
    );
  }
}
