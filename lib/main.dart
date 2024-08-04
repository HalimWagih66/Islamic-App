import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_app_settings_app.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_radio_app.dart';
import 'package:islamic_app/my_application.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  CacheAppSettingApp.cacheAppSettingApp = await SharedPreferences.getInstance();
  CacheRadioApp.cacheRadioApp = await SharedPreferences.getInstance();
  runApp(const ScreenUtilInit(
      designSize: Size(412,873),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MyApplication()));
}
