import 'package:shared_preferences/shared_preferences.dart';

class CacheRadioApp{
  static late SharedPreferences cacheRadioApp;
  static Future<void> saveNumberRadioStation(int value)async{
    await cacheRadioApp.setInt("RadioStation", value);
  }
  static int? getNumberRadioStation(){
    return cacheRadioApp.getInt("RadioStation");
  }
}