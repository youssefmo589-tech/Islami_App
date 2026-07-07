import 'package:flutter/cupertino.dart';
import 'package:projects/modules/Splashscreen/Splashscreen.dart';
import 'package:projects/modules/layout/layoutView.dart';

import 'AppRouteName.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRouteName.Splashscreen: (context) => Splashscreen(),
    AppRouteName.layout: (context) => layoutView(),
  };
}
