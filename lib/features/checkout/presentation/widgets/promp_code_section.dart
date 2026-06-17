import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_button.dart';

class PromoCodeSection extends StatelessWidget {
  const PromoCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            cursorHeight: 20,
            decoration: InputDecoration(
              hintText: AppStrings.promoCode,
              helperStyle:
                  AppTextStyle.style400size14(
                    context,
                  ).copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.darkGrayColor,
                  ),
              enabledBorder: styleFieldBorder(),
              focusedBorder: styleFieldBorder(),
            ),
          ),
        ),
        Gap(74),
        CustomButton(
          name: AppStrings.apply,
          onTap: () {
            print('apply');
          },
        ),
      ],
    );
  }
}

OutlineInputBorder styleFieldBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
    borderSide: BorderSide(
      color: AppColors.brightGrayColor,
    ),
  );
}
