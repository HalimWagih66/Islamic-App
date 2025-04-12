import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/constants/shared_preferences_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheAppSettingApp{
  static late SharedPreferences cacheAppSettingApp;
  static Future<void>saveLanguageCode(String languageCode)async{
    await cacheAppSettingApp.setString(LANGUAGE_CODE_KEY, languageCode);
  }
  static Future<void>savedStateThemeModeApp(ThemeMode theme)async{
    await cacheAppSettingApp.setString(THEME_APP_KEY, theme.name);
  }
  static String? getLanguageCode()  {
    return cacheAppSettingApp.getString(LANGUAGE_CODE_KEY);
  }
  static String? getStateThemeModeApp()  {
    return cacheAppSettingApp.getString(THEME_APP_KEY);
  }
}