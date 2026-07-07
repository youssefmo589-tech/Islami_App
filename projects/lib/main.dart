import 'package:flutter/material.dart';
import 'package:projects/core/theme/Appthememanager.dart';

import 'core/AppRoutes/AppRouteName.dart';
import 'core/AppRoutes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Appthememanager.getthemes,

      initialRoute: AppRouteName.Splashscreen,

      routes: Routes.routes,
      // home: Splashscreen(),
    );
  }
}
