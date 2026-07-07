import 'package:flutter/cupertino.dart';
import 'package:islami/core/AppRoutes/AppRouteName.dart';
import 'package:islami/modules/layout/layoutView.dart';
import 'package:islami/modules/onBoarding/OnBoarding.dart';
import 'package:islami/modules/onBoarding/Texts/OnBoardingTexts.dart';
import 'package:islami/modules/splash/Splashscreen.dart';

import '../gen/assets.gen.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRouteName.initial: (context) => const Splashscreen(),
    AppRouteName.layout: (context) => const layoutView(),
    AppRouteName.OnBoarding: (context) => OnBoarding(
      photo: Assets.images.frame3.image(),
      firstdescribe: OnBoardingTexts.firstpagefdescribe,
      seconddescribe: "",
      isback: false,
      isseconddesc: false,
      pagenum: 1,
    ),
  };
}
