import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferancesThem {
  static late SharedPreferences prefs;

  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<String> getTheme() async {
    String theme = 'light';
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? themeFromDb = prefs.getString('themekey');
    if (themeFromDb != null) {
      theme = themeFromDb;
    }

    return theme;
  }

  static setTheme(String theme) async {
    prefs.setString('themekey', theme);
  }
}
