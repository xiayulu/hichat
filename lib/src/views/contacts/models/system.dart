import 'package:flutter/material.dart';
import 'package:hichat/src/settings/color.dart';

class SystemContactModel {
  final String name;
  final IconData icon;
  final Color iconBackgroundColor;

  SystemContactModel({
    required this.name,
    required this.icon,
    this.iconBackgroundColor = AppColors.blue,
  });
}
