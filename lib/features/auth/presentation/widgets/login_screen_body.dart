import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/router/app_router.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:foodi_delivery/features/auth/presentation/widgets/custom_Text_button.dart';
import 'package:foodi_delivery/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:foodi_delivery/features/auth/presentation/widgets/sign_in_with.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'custom_button.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // Title
          Text(
            AppStrings.loginTitle,
            style: AppTextStyle.style700size36(context),
          ),
          Gap(30),
          // Email Field
          CustomTextFormField(
            lable: AppStrings.emailLable,
            messageField: AppStrings.messageEmailField,
            isPassword: false,
          ),
          Gap(30),
          // Password Field
          CustomTextFormField(
            lable: AppStrings.passwordLable,
            messageField: AppStrings.passwordLable,
            isPassword: true,
          ),
          Gap(30),
          // Forget Password
          CustomTextButton(
            text: AppStrings.forgetPassword,
            onTap: () {},
          ),
          Gap(30),
          // Login Button
          CustomButton(
            name: AppStrings.login,
            onPressed: () {},
          ),

          Gap(30),
          // Don't have an account and Navigate to Sign up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.message,
                style: AppTextStyle.style400size14(context)
                    .copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
              ),

              CustomTextButton(
                text: AppStrings.signUp,
                onTap: () {
                  context.push(AppRouter.kSignUp);
                },
              ),
            ],
          ),
          Gap(45),

          SignInWith(),
        ],
      ),
    );
  }
}
