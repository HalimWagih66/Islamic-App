import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'core/utils/app_router.dart';


class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SettingsProvider(context),
      child: Builder(
        builder: (context) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale(Provider.of<SettingsProvider>(context,listen: false).languageCode),
          supportedLocales: const [
            Locale('en'), // English
            Locale('ar'), // Arabic
          ],
        ),
      )
    );
  }
}

