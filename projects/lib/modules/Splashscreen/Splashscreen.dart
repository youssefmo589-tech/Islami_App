import 'package:flutter/material.dart';
import 'package:projects/core/AppRoutes/AppRouteName.dart';

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

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRouteName.layout,
        (route) => false,
      );
    });
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Assets.images.icSplash.image()));
  }
}
