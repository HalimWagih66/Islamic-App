import 'package:flutter/material.dart';

import '../../../../view_model/quran_tap_view_model.dart';
import 'display_surah_name_and_number_of_verses_in_the_surah.dart';


class DisplayListOfSurahNameAndVersesNumber extends StatelessWidget {
  const DisplayListOfSurahNameAndVersesNumber({
    super.key,
    required this.quranViewModel,
  });

  final QuranTapViewModel quranViewModel;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(itemBuilder: (context, index) => DisplaySurahNameAndNumberOfVersesInTheSurah(informationAboutTheSurahModel: quranViewModel.itemsInformationAboutTheSurahModel![index]),itemCount: quranViewModel.itemsInformationAboutTheSurahModel?.length,);
  }
}


