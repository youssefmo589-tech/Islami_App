import 'package:flutter/material.dart';
import 'package:islami/core/theme/AppColors.dart';

class AppThemeManager {
  static ThemeData gettemedata = ThemeData(
    scaffoldBackgroundColor: AppColors.black, // default scaffold color
    primaryColor: AppColors.gold,
    useMaterial3: false,
  );

}