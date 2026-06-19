import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/widgets/custom_app_bar.dart';
import 'package:foodi_delivery/features/profile/presentation/widgets/navigation_list_item.dart';
import 'package:foodi_delivery/features/profile/presentation/widgets/user_card.dart';
import 'package:gap/gap.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            title: AppStrings.titleProfileScreen,
            icon: Icons.arrow_back_ios_rounded,
            onPressed: () {},
          ),
          Gap(30),
          UserCard(
            fullName: 'Adam Stoeme',
            address:
                'Cite 1500/200/1300 logts ain arnat setif',
            email: 'exampel@gmail.com',
            phoneNumber: '+354823549835',
          ),
          Gap(40),
          NavigationListItem(
            title: AppStrings.orders,
            onTap: () {
              print('List Orders');
            },
          ),

          NavigationListItem(
            title: AppStrings.pendingReviews,
            onTap: () {
              print('List Orders');
            },
          ),

          NavigationListItem(
            title: AppStrings.help,
            onTap: () {
              print('List Orders');
            },
          ),

          NavigationListItem(
            title: AppStrings.signOut,
            onTap: () {
              print('List Orders');
            },
            itemColor: AppColors.primaryColor,
            textColor: AppColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
