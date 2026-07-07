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
      theme: AppThemeManager.gettemedata,

      initialRoute: AppRouteName.initial,
      routes: AppRouter.routes,

      // home: OnBoarding(photo: Assets.images.frame3.image(), firstdescribe: OnBoardingTexts.firstpagefdescribe, seconddescribe: "" , isback: false , isseconddesc: false,pagenum: 1,),
    );
  }
}
