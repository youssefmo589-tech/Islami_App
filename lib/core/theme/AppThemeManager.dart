import 'package:flutter/material.dart';
import 'package:islami/core/theme/AppColors.dart';

class AppThemeManager {
  static ThemeData gettemedata = ThemeData(
    appBarTheme: AppBarThemeData(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: AppColors.gold),
        titleTextStyle: TextStyle(fontFamily: "Janna",
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.gold),
        elevation: 0
    ),
    scaffoldBackgroundColor: AppColors.black, // default scaffold color
    primaryColor: AppColors.gold,
    useMaterial3: false,
  );

}