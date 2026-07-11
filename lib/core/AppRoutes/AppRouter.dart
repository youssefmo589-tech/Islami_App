import 'package:flutter/cupertino.dart';
import 'package:islami/core/AppRoutes/AppRouteName.dart';
import 'package:islami/modules/Quran/qurandetailsview.dart';
import 'package:islami/modules/layout/layoutView.dart';
import 'package:islami/modules/onBoarding/OnBoarding.dart';
import 'package:islami/modules/splash/Splashscreen.dart';

abstract class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRouteName.initial: (context) => const Splashscreen(),
    AppRouteName.layout: (context) => const layoutView(),
    AppRouteName.OnBoarding: (context) => OnBoarding(),
    AppRouteName.QuranDetailsView: (context) => QuranDetailsView(),
  };
}
