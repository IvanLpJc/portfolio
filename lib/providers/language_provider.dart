import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _currentLocale;

  LanguageProvider({required Locale locale}) : _currentLocale = locale;

  Locale get currentLocale => _currentLocale;

  set currentLocale(Locale newLocale) {
    _currentLocale = newLocale;
    notifyListeners();
  }
}
