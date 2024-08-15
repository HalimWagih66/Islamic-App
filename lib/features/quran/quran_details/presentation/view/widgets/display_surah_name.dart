import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic_app/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import '../../view_model/quran_details_view_model.dart';

class DisplaySurahName extends StatelessWidget {
  const DisplaySurahName({super.key});
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context);
    return quranDetailsViewModel.isFirstPageViewBuilder!?Stack(
      children: [
        SvgPicture.asset(settingsProvider.isDarkEnabled()?"assets/images/details_screen/quran_details/surah_banner2.svg":"assets/images/details_screen/quran_details/surah_banner1.svg",width: MediaQuery.of(context).size.width * .98),
        Align(heightFactor: 0.8,child: Center(child: Text(settingsProvider.isLanguageEnglish()? quranDetailsViewModel.informationAboutTheSurahModel.englishName??"":  quranDetailsViewModel.informationAboutTheSurahModel.name??"",style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri)))
      ],
    ):const SizedBox();
  }
}