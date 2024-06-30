import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static const Map<String, Locale> locales = {
    'es': Locale('es', 'ES'),
    'en': Locale('en', 'EN'),
  };

  static String _language = 'es';
  static bool _isDarkmode = false;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get language {
    return _prefs.getString('language') ?? _language;
  }

  static Locale get locale {
    if (_prefs.getString('language') == null) {
      return locales[_language]!;
    } else {
      return locales[_prefs.getString('language')]!;
    }
  }

  static set language(String language) {
    _language = language;
    _prefs.setString('language', language);
  }

  static bool get isDarkmode {
    //Devolvemos el valor que tenemos almacenado en las preferencias
    //pero puede ser que nunca se haya guardado así que condicionamos para
    //que en tal caso devuelva el valor que tenemos aquí
    return _prefs.getBool('isDarkmode') ?? _isDarkmode;
  }

  static set isDarkmode(bool isDarkmode) {
    _isDarkmode = isDarkmode;
    _prefs.setBool('isDarkmode', isDarkmode);
  }
}
