import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../../my_application.dart';
import '../../../../../../to_arabic_no_covertor.dart';

TextSpan ayaNumberWidget(
    {required BuildContext context, required int ayaNumber,required String urlSound}){
  return TextSpan(
    text: " ${ArabicNumbers.convert(ayaNumber)} ",
  style: themeApp.fontElquran.copyWith(fontSize: 35),
    recognizer: LongPressGestureRecognizer()..onLongPress = () async {
    await Provider.of<QuranDetailsViewModel>(context,listen: false).soundTheAya(urlSound);
  },
  );
}