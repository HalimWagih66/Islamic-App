import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../data/model/ayah_model.dart';
import 'aya_number_widget.dart';


class DisplayAya extends StatelessWidget {
  const DisplayAya({super.key, required this.items});

   final List<AyahModel> items;
  @override
  Widget build(BuildContext context) {
    QuranDetailsViewModel quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context,listen: false);
    return RichText(
      textAlign: quranDetailsViewModel.informationAboutTheSurahModel.number!.toInt() == 93 || quranDetailsViewModel.informationAboutTheSurahModel.number!.toInt() == 1 ? TextAlign.center : TextAlign.justify,
        text: TextSpan(

          children:  items.map((ayaModel) => displayTextAya(context, ayaModel)).toList()
        )
    );
  }
}

TextSpan displayTextAya(BuildContext context,AyahModel ayaModel){
  var settingsProvider = Provider.of<SettingsProvider>(context,listen: false);
  return TextSpan(
    children: [
      TextSpan(text: ayaModel.text,style: settingsProvider.themeApp.fontElquran),
      ayaNumberWidget(context: context, ayaNumber: ayaModel.numberInSurah!.toInt(),urlSound: ayaModel.audio??ayaModel.audioSecondary?[0]??"")
    ]
  );
}