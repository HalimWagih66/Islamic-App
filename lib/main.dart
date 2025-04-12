import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_app_settings_app.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_mark_quran.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_radio_app.dart';
import 'package:islamic_app/core/utils/shared/cache/share_preferences/cache_tasbeeh.dart';
import 'package:islamic_app/features/quran/quran_details/data/repos/quran_details_repo_impl_local.dart';
import 'package:islamic_app/my_application.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheAppSettingApp.cacheAppSettingApp = await SharedPreferences.getInstance();
  CacheRadioApp.cacheRadioApp = await SharedPreferences.getInstance();
  CacheMarkQuran.cacheMarkQuran = await SharedPreferences.getInstance();
  CacheTasbeeh.cacheTasbeeh = await SharedPreferences.getInstance();
  runApp(
    ScreenUtilInit(
      designSize: const Size(412, 873),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SettingsProvider(),),
          ChangeNotifierProvider(create: (context) => QuranDetailsViewModel(QuranDetailsRepoImplLocal()),)
        ],
        child: const MyApplication(),
      ),
    ),
  );
}
