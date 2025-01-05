import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String _counterKey = 'counter';

  static Future<int> loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_counterKey) ?? 0;
  }

  static Future<void> saveCounter(int counter) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_counterKey, counter);
  }
}
