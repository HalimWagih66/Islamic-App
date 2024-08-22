import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/core/utils/theme/text_theme_dark_app.dart';
import 'package:islamic_app/core/utils/theme/text_theme_light_app.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'core/utils/app_router.dart';
import 'core/utils/theme/theme_app.dart';

late ThemeApp themeApp;

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    themeApp = settingsProvider.themeMode == ThemeMode.dark?TextThemeDarkApp():TextThemeLightApp();
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Locale(settingsProvider.languageCode),
        supportedLocales: const [
          Locale('en'), // English
          Locale('ar'), // Arabic
        ],
    );
  }
}

