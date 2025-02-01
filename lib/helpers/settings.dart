import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;

  ThemeMode get getTheme => theme;

  void setTheme(ThemeMode theme) {
    this.theme = theme;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}
