import 'package:flutter/material.dart';
import '../../../../core/utils/app_responsive.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.leadingIcon,
    required this.leadingOnPressed,
    required this.actionIcon,
    required this.actionOnPressed,
  });

  final Widget leadingIcon;
  final Function() leadingOnPressed;

  final Widget actionIcon;
  final Function() actionOnPressed;

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(
      context: context,
    );
    return Padding(
      padding: EdgeInsets.only(
        top: appResponsive.removeTopPadding + 16,
        right: 8,
        left: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: leadingOnPressed,
            icon: leadingIcon,
          ),

          IconButton(
            onPressed: actionOnPressed,
            icon: actionIcon,
          ),
        ],
      ),
    );
  }
}
