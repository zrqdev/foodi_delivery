import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/features/auth/presentation/widgets/custom_button.dart';
import 'package:foodi_delivery/features/auth/presentation/widgets/sign_in_with.dart';
import 'package:gap/gap.dart';
import '../../../../core/utils/app_text_style.dart';
import 'custom_text_form_field.dart';

class SignUpScreenBody extends StatelessWidget {
  SignUpScreenBody({super.key});

  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 50.0,
        left: 50.0,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,

            children: [
              Gap(15),
              // Title
              Text(
                AppStrings.signUpTitle,
                style: AppTextStyle.style700size36(context),
              ),
              // Full Name Field
              CustomTextFormField(
                lable: AppStrings.fullName,
                messageField: AppStrings.fullName,
                isPassword: false,
                messageValidation:
                    AppStrings.fullNameMessageError,
              ),
              Gap(16),
              // Email Field
              CustomTextFormField(
                lable: AppStrings.emailLable,
                messageField: AppStrings.messageEmailField,
                isPassword: false,
                messageValidation:
                    AppStrings.emailMessageError,
                isEmail: true,
              ),
              Gap(16),
              // Password Field
              CustomTextFormField(
                lable: AppStrings.passwordLable,
                messageField: AppStrings.passwordLable,
                isPassword: true,
                messageValidation:
                    AppStrings.passwordMessageError,
              ),
              Gap(16),
              // Confirme Password Field
              CustomTextFormField(
                lable: AppStrings.confirmePassword,
                messageField: AppStrings.passwordLable,
                isPassword: true,
                messageValidation:
                    AppStrings.confirmePasswordMessageError,
              ),
              Gap(36),
              CustomButton(
                name: AppStrings.signUpTitle,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('valid data');
                  } else {
                    print('valid djkdnwnkj  data');
                  }
                },
              ),
              Gap(36),
              SignInWith(),
              Gap(36),
            ],
          ),
        ),
      ),
    );
  }
}
