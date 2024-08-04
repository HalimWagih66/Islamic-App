import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../provider/settings_provider.dart';

class DisplayTableHeader extends StatelessWidget {
  const DisplayTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          Divider(
            color: settingsProvider.themeApp.primaryColor,
            thickness: 3.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.number_of_verses,style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.start,),
                Text(AppLocalizations.of(context)!.surah_name,style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri,textAlign: TextAlign.end,),
              ],
            ),
          ),
          Divider(
            color: settingsProvider.themeApp.primaryColor,
            thickness: 3.h,
          ),
        ],
      ),
    );
  }
}
