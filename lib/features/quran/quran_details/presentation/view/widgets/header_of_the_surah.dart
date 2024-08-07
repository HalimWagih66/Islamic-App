import 'package:flutter/material.dart';
import 'package:islamic_app/to_arabic_no_covertor.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../../provider/settings_provider.dart';
import '../../view_model/quran_details_view_model.dart';
import 'display_book_mark.dart';

class HeaderOfTheSurah extends StatelessWidget {
  const HeaderOfTheSurah({super.key});
  @override
  Widget build(BuildContext context) {
    QuranDetailsViewModel quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context);
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(settingsProvider.isLanguageEnglish()? quranDetailsViewModel.informationAboutTheSurahModel.englishName??"":  quranDetailsViewModel.informationAboutTheSurahModel.name??"",style: settingsProvider.themeApp.font12SecondPrimaryRegularInter),
        Row(
          children: [
            Text("${AppLocalizations.of(context)!.aljuz} : ${ArabicNumbers.convert(quranDetailsViewModel.pageVerses[quranDetailsViewModel.pageVerses.length-1].juz!.toInt())}",style: settingsProvider.themeApp.font12SecondPrimaryRegularInter,textDirection: TextDirection.rtl,),
            const DisplayBookMark()
          ],
        ),
      ],
    );
  }
}


