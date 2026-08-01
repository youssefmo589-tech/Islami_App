import 'package:shared_preferences/shared_preferences.dart';

abstract class RecentSura {
  static const String _key = "recentsura";

  static const int _maxrecent = 5;

  // Writeeeeeeeeeeeeeeeeeeeeee
  static Future<void> addSura(int SuraNumber) async {
    final prefs = await SharedPreferences.getInstance();

    final recent = prefs.getStringList(_key) ?? <String>[];
    recent.remove(SuraNumber.toString());
    recent.insert(0, SuraNumber.toString());
    final trimmed = recent.take(_maxrecent).toList();

    await prefs.setStringList(_key, trimmed);
  }

  // gettttttttttttttttttttttttttttttttttttt
  static Future<List<int>> getRecentSyra() async {
    final prefs = await SharedPreferences.getInstance();
    final recent = prefs.getStringList(_key) ?? <String>[];
    return recent.map((item) => int.parse(item)).toList();
  }
}
