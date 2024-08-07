import 'dart:convert';
import 'package:islamic_app/core/utils/constants/shared_preferences_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheTasbeeh{
  static late SharedPreferences cacheTasbeeh;
  static Future<void>saveSelectedTasbeeh(
      {required int selectedContentTasbeeh, required int counterTasbeeh}) async {
    Map<String,int> tasbeeh = {
      "selectedContentTasbeeh":selectedContentTasbeeh,
      "counterTasbeeh":counterTasbeeh
    };
    String tasbeehJson = jsonEncode(tasbeeh);
    await cacheTasbeeh.setString(TASBIH_KEY, tasbeehJson);
  }
  static Map<String,dynamic>? getSelectedTasbeeh() {
    String? tasbeeh = cacheTasbeeh.getString(TASBIH_KEY);
    if (tasbeeh != null) {
      return jsonDecode(tasbeeh);
    }
    return null;
  }
}