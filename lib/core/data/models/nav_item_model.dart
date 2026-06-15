import 'package:flutter/material.dart';

class NavItemModel {
  final int id;
  final IconData enabledIcon;
  final IconData disabledIcon;
  final Widget? destination;

  NavItemModel({
    required this.id,
    required this.destination,
    required this.enabledIcon,
    required this.disabledIcon,
  });
}
