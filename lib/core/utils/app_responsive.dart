import 'package:flutter/material.dart';

class AppResponsive {
  BuildContext context;
  static const double baseWidth = 430.0;
  static const double baseHeight = 932.0;

  AppResponsive({required this.context});

  double get _widthDevice =>
      MediaQuery.sizeOf(context).width;
  double get _heightDevice =>
      MediaQuery.sizeOf(context).height;

  double get bottomPadding =>
      MediaQuery.of(context).padding.bottom;

  double get topPadding =>
      MediaQuery.of(context).padding.top;

  double setFontSize(double size) {
    double scaleFactor = _widthDevice / baseWidth;

    return size * scaleFactor;
  }

  double setHeight(double height) =>
      _heightDevice * (height / baseHeight);
  double setWidth(double width) =>
      _widthDevice * (width / baseWidth);

  double get heightOnboardingButton => setHeight(70);
  double get widthOnboardingButton => setHeight(321);

  double get heightAuthButton => setHeight(60);
  double get widthAuthButton => setHeight(248);
}
