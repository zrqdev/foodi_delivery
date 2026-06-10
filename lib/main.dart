import 'package:device_preview/device_preview.dart';
import 'package:foodi_delivery/core/router/app_router.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const FoodiDelivery(),
    ),
  );
}

class FoodiDelivery extends StatelessWidget {
  const FoodiDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
