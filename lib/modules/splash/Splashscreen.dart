//
// import 'package:flutter/material.dart';
// import 'package:islami/core/AppRoutes/AppRouteName.dart';
// import 'package:islami/modules/layout/layoutView.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../core/gen/assets.gen.dart';
// import '../../core/theme/AppColors.dart';
//
// class Splashscreen extends StatefulWidget {
//   const Splashscreen({super.key});
//
//   State<Splashscreen>createState() {
//     return _SplashscreenState() ;
//   }
//
// }
// class  _SplashscreenState extends State<Splashscreen>
// {
//
//   void initState() {
//     super.initState();
//     checkonboarding();
//   }
//   Future<void>checkonboarding()async{
//
//
//     final prefs = await
//     SharedPreferences.getInstance() ;
//
//     bool ? seen  = prefs.getBool("seen") ;
//     if(seen == true) {
//       Future.delayed(Duration(seconds: 3), () {
//         Navigator.pushNamedAndRemoveUntil(
//             context, AppRouteName.layout, (route) => false);
//       }
//       );
//     }
//     else
//       {
//         Future.delayed(Duration(seconds: 3), () {
//           Navigator.pushNamedAndRemoveUntil(
//               context, AppRouteName.OnBoarding, (route) => false);
//         }
//         );
//
//       }
//
//
//   }
//
//   @override
//   Widget build(BuildContext context)
//   {
//   return Scaffold(
//     backgroundColor: AppColors.black,
//    body:  Center(
//       child: Assets.images.icSplash.image(),
//     ),
//   );
//   }
// }

import 'package:flutter/material.dart';

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

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRouteName.OnBoarding,
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
