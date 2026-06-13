import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_assets.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/home_screen_body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        // Menu Button
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.menuIcon),
          ),
        ),
        // Shoping cart Button
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.shopingCartIcon,
              ),
            ),
          ),
        ],
      ),

      body: HomeScreenBody(),

      bottomNavigationBar: BottomNavBar(),
    );
  }
}
