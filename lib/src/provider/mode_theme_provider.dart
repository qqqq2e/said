import 'package:dilevery/core/my_theme_preference.dart';
import 'package:flutter/material.dart';

class ModelThemeProvider extends ChangeNotifier {
  late bool _isDark;
  late MyThemePreferences _preferences;
  bool get isDark => _isDark;

  ModelThemeProvider() {
    _isDark = true;
    _preferences = MyThemePreferences();
    getPreferences();
  }
//Switching the themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  ThemeMode getThemeMode() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }
}
