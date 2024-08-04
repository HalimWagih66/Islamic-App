import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/constants/shared_preferences_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SettingsAppData{
  static late SharedPreferences settingsAppData;
  static Future<void>saveLanguageCode(String languageCode)async{
    await settingsAppData.setString(languageCodeKey, languageCode);
  }
  static Future<void>savedStateThemeModeApp(ThemeMode theme)async{
    await settingsAppData.setString(themeAppKey, theme.name);
  }
  static String? getLanguageCode()  {
    return settingsAppData.getString(languageCodeKey);
  }
  static String? getStateThemeModeApp()  {
    return settingsAppData.getString(themeAppKey);
  }
}