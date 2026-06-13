import 'package:flutter/material.dart';

class AppResponsive {
  BuildContext context;
  static const double baseWidth = 430.0;
  static const double baseHeight = 932.0;

  AppResponsive({required this.context});

  double get _deviceWidth =>
      MediaQuery.sizeOf(context).width;
  double get _deviceHeight =>
      MediaQuery.sizeOf(context).height;

  double get bottomPadding =>
      MediaQuery.of(context).padding.bottom;

  double get topPadding =>
      MediaQuery.of(context).padding.top;

  double setFontSize(double size) {
    double scaleFactor = _deviceWidth / baseWidth;

    return size * scaleFactor;
  }

  double setHeight(double height) =>
      _deviceHeight * (height / baseHeight);
  double setWidth(double width) =>
      _deviceWidth * (width / baseWidth);

  double get onboardingButtonHeight => setHeight(70);
  double get onboardingButtonWidth => setWidth(321);

  double get authButtonHeight => setHeight(60);
  double get authButtonWidth => setWidth(248);

  double get filterButtonWidth => setWidth(60);
  double get filterButtonHeight => setHeight(60);

  double get whiteCardWidth => setWidth(183);
  double get whiteCardHeight => setHeight(212);

  double get orderItemHeight => setHeight(296);

  double get dynamicAspectRatio =>
      whiteCardWidth / orderItemHeight;

  double get removeBottomPadding => bottomPadding;
}
