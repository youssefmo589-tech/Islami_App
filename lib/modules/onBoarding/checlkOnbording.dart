import 'package:shared_preferences/shared_preferences.dart';

abstract class CheckOnboarding {
  static Future<void> setinst() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("seen", true);
  }

  static Future<bool> getinst() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool("seen") ?? false;
  }
}
