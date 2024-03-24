import 'package:flutter/material.dart';

class DataIs extends ChangeNotifier {
  bool _themeIsDark = true;
  bool get themeIsDark => _themeIsDark;

  ThemeData _themeDataIs = ThemeData.dark();
  ThemeData get themeDataIs => _themeDataIs;

  changeTheme(bool value) {
    _themeIsDark = value;
    if (value) {
      _themeDataIs = ThemeData.dark();
    } else {
      _themeDataIs = ThemeData.light();
    }
    ;
    notifyListeners();
  }
}
