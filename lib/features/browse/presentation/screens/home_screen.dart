import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_assets.dart';
import '../widgets/home_screen_body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // Menu Button
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.menuIcon),
        ),
        // Shoping cart Button
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.shopingCartIcon),
          ),
        ],
      ),

      body: HomeScreenBody(),
    );
  }
}
