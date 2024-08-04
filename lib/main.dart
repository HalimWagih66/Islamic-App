import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/settings_app_data.dart';
import 'package:islamic_app/my_application.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SettingsAppData.settingsAppData = await SharedPreferences.getInstance();

  runApp(const ScreenUtilInit(
      designSize: Size(412,873),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MyApplication()));
}
