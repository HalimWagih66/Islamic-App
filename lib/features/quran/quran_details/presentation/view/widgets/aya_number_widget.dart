import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/settings_provider.dart';
import '../../../../../../to_arabic_no_covertor.dart';

TextSpan ayaNumberWidget(
    {required BuildContext context, required int ayaNumber,required String urlSound}){
  var settingsProvider = Provider.of<SettingsProvider>(context,listen: false);
  return TextSpan(
    text: settingsProvider.isDarkEnabled()?" ${ArabicNumbers.convert(ayaNumber)} " : "﴾ $ayaNumber ﴿",
  style: settingsProvider.themeApp.fontElquran.copyWith(fontSize: 35),
    recognizer: LongPressGestureRecognizer()..onLongPress = () async {
    await Provider.of<QuranDetailsViewModel>(context,listen: false).soundTheAya(urlSound);
  },
  );
}