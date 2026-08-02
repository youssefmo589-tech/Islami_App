
import 'package:flutter/material.dart';
import 'package:islami/modules/onBoarding/checlkOnbording.dart';

import '../../core/AppRoutes/AppRouteName.dart';
import '../../core/gen/assets.gen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  State<Splashscreen> createState() {
    return _SplashscreenState();
  }
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    check();
  }

  void check() async {
    bool seen = await CheckOnboarding.getinst();
    if (seen) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRouteName.layout,
          (route) => false,
        );
      });
    } else {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRouteName.OnBoarding,
          (route) => false,
        );
      });
    }
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Assets.images.icSplash.image()));
  }
}
