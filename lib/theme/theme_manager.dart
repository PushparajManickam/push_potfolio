import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  bool _isDartTheme = false;
  bool get getIsDartTheme => _isDartTheme;
  set setIsSetDartTheme(bool value) {
    _isDartTheme = value;
    notifyListeners();
  }
}
