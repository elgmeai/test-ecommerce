import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferancesThem {
  static late SharedPreferences prefs;

  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static getTheme() async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString('themekey');
    if (theme==null) {
      theme =='light';
    }
    
    return theme;
  }

  static setTheme(String theme) async {
    prefs.setString('themekey', theme);
  }
}
