import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/settings_tap/view/widget/custom_bottom_sheet_for_theme.dart';
import 'package:islamic_app/features/settings_tap/view/widget/field_choose_app_state.dart';
import 'package:provider/provider.dart';
import '../../../provider/settings_provider.dart';

class SettingsTap extends StatelessWidget {
  const SettingsTap({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme, style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri),
          SizedBox(
            height: 12.h,
          ),
          InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: FieldChooseAppState(text: settingsProvider.isDarkEnabled() ? AppLocalizations.of(context)!.dark : AppLocalizations.of(context)!.light),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(AppLocalizations.of(context)!.language, style: settingsProvider.themeApp.font25SecondPrimarySemiBoldElMessiri),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: FieldChooseAppState(text: settingsProvider.isLanguageEnglish() ? "English" : "العربيه"),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context,listen: false);
    showModalBottomSheet(
        context: context, builder: (context) => CustomBottomSheetForTheme(textButtonTheFirst: 'Light', textButtonTheSecond: 'Dark',background: provider.themeApp.thirdPrimaryColor));
  }

  void showLanguageBottomSheet(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context,listen: false);
    showModalBottomSheet(
      context: context,
      builder: (context) =>  const SizedBox()
    );
  }
}