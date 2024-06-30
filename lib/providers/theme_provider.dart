import 'package:flutter/material.dart';
import 'package:portfolio/themes/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required bool isDarkmode})
      : currentTheme = isDarkmode ? Themes.lightTheme : Themes.darkTheme;

  setLightMode() {
    currentTheme =Themes.lightTheme;
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = Themes.darkTheme;
    notifyListeners();
  }
}