import 'package:flutter/material.dart';
import 'package:islami/core/AppRoutes/AppRouteName.dart';
import 'package:islami/core/theme/AppThemeManager.dart';

import 'core/AppRoutes/AppRouter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.gettemedata,

      initialRoute: AppRouteName.initial,
      routes: AppRouter.routes,
    );
  }
}
