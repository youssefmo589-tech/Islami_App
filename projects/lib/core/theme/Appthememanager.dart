import 'package:flutter/material.dart';

import 'AppColors.dart';

abstract class Appthememanager {
  static ThemeData getthemes = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    primaryColor: AppColors.gold,
  );
}
