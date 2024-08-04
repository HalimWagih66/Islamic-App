import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/constants/shared_preferences_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheAppSettingApp{
  static late SharedPreferences cacheAppSettingApp;
  static Future<void>saveLanguageCode(String languageCode)async{
    await cacheAppSettingApp.setString(languageCodeKey, languageCode);
  }
  static Future<void>savedStateThemeModeApp(ThemeMode theme)async{
    await cacheAppSettingApp.setString(themeAppKey, theme.name);
  }
  static String? getLanguageCode()  {
    return cacheAppSettingApp.getString(languageCodeKey);
  }
  static String? getStateThemeModeApp()  {
    return cacheAppSettingApp.getString(themeAppKey);
  }
}