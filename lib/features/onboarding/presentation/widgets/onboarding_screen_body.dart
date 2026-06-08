import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/router/app_router.dart';
import 'package:foodi_delivery/core/utils/app_assets.dart';
import 'package:foodi_delivery/core/utils/app_responsive.dart';
import 'package:foodi_delivery/core/utils/app_strings.dart';
import 'package:foodi_delivery/core/utils/app_text_style.dart';
import 'package:foodi_delivery/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({
    super.key,
    required this.appResponsive,
  });

  final AppResponsive appResponsive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: appResponsive.bottomPadding,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: appResponsive.topPadding,
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              child: Image.asset(
                height: 380,
                Assets.onboardingImage,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppStrings.onboardingTitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.onboardingTitleStyle(
                    context,
                  ),
                ),
                Text(
                  AppStrings.onboardingSubTitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.style400size14(
                    context,
                  ),
                ),

                CustomButton(
                  onPressed: () {
                    context.go(AppRouter.kLogin);
                  },
                  appResponsive: appResponsive,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
