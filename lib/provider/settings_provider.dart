import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/theme/text_theme_dark_app.dart';
import 'package:islamic_app/core/utils/theme/text_theme_light_app.dart';
import 'package:islamic_app/core/utils/theme/theme_app.dart';
import '../core/utils/shared/cache/share_preferences/cache_app_settings_app.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeApp themeApp = TextThemeLightApp();
  String _languageCode = "ar";
  SettingsProvider() {
    initializeValues();
  }
  void initializeValues()async{
    initializeThemeMode();
    initializeLanguageCode();
    notifyListeners();
  }

  void initializeLanguageCode() {
    if(CacheAppSettingApp.getLanguageCode() == null){
      _languageCode = 'ar';
    }else{
      _languageCode = CacheAppSettingApp.getLanguageCode()!;
    }
  }

  void initializeThemeMode() {
    if(CacheAppSettingApp.getStateThemeModeApp() == null){
      _themeMode = ThemeMode.system;
      themeApp = ThemeMode.system == ThemeMode.dark?TextThemeDarkApp():TextThemeLightApp();
    }else{
      _themeMode = CacheAppSettingApp.getStateThemeModeApp() == "dark"?ThemeMode.dark:ThemeMode.light;
      themeApp = CacheAppSettingApp.getStateThemeModeApp() == "dark"?TextThemeDarkApp():TextThemeLightApp();
    }
  }
  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode value) {
    _themeMode = value;
  }
  bool isDarkEnabled(){
    return _themeMode == ThemeMode.dark;
  }
  bool isLanguageEnglish(){
    return _languageCode == "en";
  }

  String get languageCode => _languageCode;

  set languageCode(String value) {
    _languageCode = value;
  }
  Future<void> changeLanguageApp(String languageCode)async{
    this.languageCode = languageCode;
    await CacheAppSettingApp.saveLanguageCode(languageCode);
    notifyListeners();
  }
  Future<void> changeThemeMode(ThemeMode themeMode)async{
    this.themeMode = themeMode;
    themeApp = themeMode == ThemeMode.dark?TextThemeDarkApp():TextThemeLightApp();
    await CacheAppSettingApp.savedStateThemeModeApp(themeMode);
    notifyListeners();
  }
  String getMainBackground() {
    return themeMode == ThemeMode.dark
        ? "assets/images/home layout/background_main/background_layout_screen_dark.png"
        : "assets/images/home layout/background_main/background_layout_screen_light.png";
  }
  String getImageHeadSabhuh() {
    return themeMode == ThemeMode.dark
        ? "assets/images/home layout/azkar_tap/dark/head of seb7a.png"
        : "assets/images/home layout/azkar_tap/light/head of seb7a.png";
  }
  String getImageBodySabhuh() {
    return themeMode == ThemeMode.dark
        ? "assets/images/home layout/azkar_tap/dark/body of seb7a.png"
        : "assets/images/home layout/azkar_tap/light/body of seb7a.png";
  }
}
