import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constants/shared_preferences_constants.dart';

class CacheMarkQuran{
  static late SharedPreferences cacheMarkQuran;
  static Future<void>saveMarkQuran(int page,int surahNumber) async {
    Map<String,int> mark = {
      "page":page,
      "surahNumber":surahNumber
    };
    String markJson = jsonEncode(mark);
    await cacheMarkQuran.setString(MARK_QURAN_KEY, markJson);
  }
  static Map<String,dynamic>? getMarkQuran() {
    String? markJson = cacheMarkQuran.getString(MARK_QURAN_KEY);
    if (markJson != null) {
      return jsonDecode(markJson);
    }
    return null;
  }
}