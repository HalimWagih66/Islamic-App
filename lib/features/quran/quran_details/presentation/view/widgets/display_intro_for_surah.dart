import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/quran_details_view_model.dart';
import 'display_basmllah.dart';
import 'display_surah_name.dart';

class DisplayIntroForSurah extends StatelessWidget {
  const DisplayIntroForSurah({super.key});

  @override
  Widget build(BuildContext context) {
    QuranDetailsViewModel quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context);
    return quranDetailsViewModel.isFirstPageViewBuilder? const Column(
      children: [
        DisplaySurahName(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: DisplayBasmllah(),
        ),
      ],
    ): const SizedBox();
  }
}