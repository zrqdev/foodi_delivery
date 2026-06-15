import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/logic/nav_items_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer<NavItemsProvider>(
          builder:
              (
                BuildContext context,
                navItem,
                Widget? child,
              ) => IconButton(
                onPressed: () {
                  navItem.changeNavItem(navItem.oldItem);
                  context.pop();
                },
                icon: Icon(Icons.arrow_back_ios_rounded),
              ),
        ),
      ),
      body: Center(child: Text('This is Checkout Screen')),
    );
  }
}
