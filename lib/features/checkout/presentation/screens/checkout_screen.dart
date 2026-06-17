import 'package:flutter/material.dart';
import '../widgets/checkout_screen_body.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: CheckoutScreenBody(),
    );
  }
}
