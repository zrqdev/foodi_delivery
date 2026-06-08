import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/features/onboarding/presentation/widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );

    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body: OnboardingScreenBody(
        appResponsive: appResponsive,
      ),
    );
  }
}
