import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'favorite_order_item.dart';

class WishlistScreenBody extends StatelessWidget {
  const WishlistScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App Bar Screen
        CustomAppBar(
          title: AppStrings.titleFavoritesScreen,
          icon: Icons.arrow_back_ios_new_rounded,
          onPressed: () {},
        ),

        // List Favorite Orders
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 5),
            itemCount: 5,
            itemBuilder: (context, index) =>
                FavoriteOrderItem(
                  image: 'assets/images/image 4.png',
                  title: 'Cheese Pizza ${index + 1}',
                  price: 9.99,
                  onTap: () {
                    print('Delete Favorite Item');
                  },
                ),
          ),
        ),
      ],
    );
  }
}
