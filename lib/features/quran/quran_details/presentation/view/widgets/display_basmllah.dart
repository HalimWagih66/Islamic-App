import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../../my_application.dart';

class DisplayBasmllah extends StatelessWidget {
  const DisplayBasmllah({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider.of<QuranDetailsViewModel>(context,listen: false).informationAboutTheSurahModel.number?.toInt()!=9?Text("بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ",style: themeApp.fontElquran,textAlign: TextAlign.center,):const SizedBox();
  }
}
