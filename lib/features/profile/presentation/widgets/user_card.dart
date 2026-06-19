import 'package:flutter/material.dart';
import 'package:foodi_delivery/features/profile/presentation/widgets/avatar_selection.dart';
import 'package:foodi_delivery/features/profile/presentation/widgets/data_entry.dart';
import 'package:foodi_delivery/features/profile/presentation/widgets/full_name_display.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_text_button.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.fullName,
    required this.address,
    required this.email,
    required this.phoneNumber,
  });

  final String fullName;
  final String address;
  final String email;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withAlpha(20),
                offset: Offset(0, 20),
                blurRadius: 20,
                spreadRadius: -10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AvatarSelection(),
                  Gap(20),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      FullNameDisplay(fullName: fullName),
                      DataEntry(
                        title: AppStrings.phoneNumber,
                        data: phoneNumber,
                      ),
                    ],
                  ),
                ],
              ),
              Gap(16),
              DataEntry(
                title: AppStrings.email,
                data: email,
                isUnderline: true,
              ),
              Gap(6),
              DataEntry(
                title: AppStrings.address,
                data: address,
              ),
            ],
          ),
        ),

        CustomTextButton(title: AppStrings.edit),
      ],
    );
  }
}
