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

import '../../../../core/widgets/custom_button.dart';

class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({super.key});
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 50.0,
        left: 50.0,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Gap(50),
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
                messageValidation:
                    AppStrings.emailMessageError,
                isEmail: true,
              ),
              Gap(30),
              // Password Field
              CustomTextFormField(
                lable: AppStrings.passwordLable,
                messageField: AppStrings.passwordLable,
                isPassword: true,
                messageValidation:
                    AppStrings.passwordMessageError,
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
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // ignore: avoid_print
                    print('valid data');
                    context.go(AppRouter.kHome);
                  }
                },
              ),

              Gap(30),
              // Don't have an account and Navigate to Sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.message,
                    style:
                        AppTextStyle.style400size14(
                          context,
                        ).copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                        ),
                  ),

                  CustomTextButton(
                    text: AppStrings.signUpTitle,
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
        ),
      ),
    );
  }
}
