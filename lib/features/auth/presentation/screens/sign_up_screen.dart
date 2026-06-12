import 'package:flutter/material.dart';
import 'package:foodi_delivery/core/widgets/custom_icon_button.dart';
import 'package:go_router/go_router.dart';

import '../widgets/sign_up_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: CustomIconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icons.arrow_back_ios_new_rounded,
        ),
      ),

      body: SignUpScreenBody(),
    );
  }
}
