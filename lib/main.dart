import 'package:device_preview/device_preview.dart';
import 'package:foodi_delivery/core/router/app_router.dart';
import 'package:foodi_delivery/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/logic/nav_items_provider.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => NavItemsProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.whiteColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
