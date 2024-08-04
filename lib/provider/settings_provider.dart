import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/theme/text_theme_dark_app.dart';
import 'package:islamic_app/core/utils/theme/text_theme_light_app.dart';
import 'package:islamic_app/core/utils/theme/theme_app.dart';
import '../core/utils/shared/cache/share_preferences/settings_app_data.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeApp themeApp = TextThemeLightApp();
  String _languageCode = "ar";
  SettingsProvider(BuildContext context) {
    initializeValues(context);
  }
  void initializeValues(BuildContext context)async{
    initializeThemeMode(context);
    initializeLanguageCode(context);
    notifyListeners();
  }

  void initializeLanguageCode(BuildContext context) {
    if(SettingsAppData.getLanguageCode() == null){
      _languageCode = 'ar';
    }else{
      _languageCode = SettingsAppData.getLanguageCode()!;
    }
  }

  void initializeThemeMode(BuildContext context) {
    if(SettingsAppData.getStateThemeModeApp() == null){
      var platformBrightness = MediaQuery.of(context).platformBrightness;
      _themeMode = platformBrightness == Brightness.dark?ThemeMode.dark:ThemeMode.light;
      themeApp = platformBrightness == Brightness.dark?TextThemeDarkApp():TextThemeLightApp();
    }else{
      _themeMode = SettingsAppData.getStateThemeModeApp() == "dark"?ThemeMode.dark:ThemeMode.light;
      themeApp = SettingsAppData.getStateThemeModeApp() == "dark"?TextThemeDarkApp():TextThemeLightApp();
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
    await SettingsAppData.saveLanguageCode(languageCode);
    notifyListeners();
  }
  Future<void> changeThemeMode(ThemeMode themeMode)async{
    this.themeMode = themeMode;
    themeApp = themeMode == ThemeMode.dark?TextThemeDarkApp():TextThemeLightApp();
    await SettingsAppData.savedStateThemeModeApp(themeMode);
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
