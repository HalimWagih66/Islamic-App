import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../provider/settings_provider.dart';
import '../../view_model/quran_details_view_model.dart';
import 'display_aya.dart';
import 'display_intro_for_surah.dart';
import 'header_of_the_surah.dart';

class DisplayThePage extends StatelessWidget {
  const DisplayThePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuranDetailsViewModel quranDetailsViewModel =
        Provider.of<QuranDetailsViewModel>(context);
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return PageView.builder(
      itemCount: quranDetailsViewModel.surahModel.ayahs?[quranDetailsViewModel.surahModel.ayahs!.length - 1].pageInSurah?.toInt(),
      scrollDirection: Axis.horizontal,
      onPageChanged: (value) {
        quranDetailsViewModel.filterTheSurahByPage(page: value + 1,
            surahNumber: quranDetailsViewModel.informationAboutTheSurahModel.number!.toInt());
        if (value == 1) {
          quranDetailsViewModel.isFirstPageViewBuilder = false;
        } else if (value == 0) {
          quranDetailsViewModel.isFirstPageViewBuilder = true;
        }
      },
      itemBuilder: (context, index) => CustomScrollView(
        slivers: [
            const SliverToBoxAdapter(child:  HeaderOfTheSurah()),
             const SliverToBoxAdapter(child: DisplayIntroForSurah()),
            SliverToBoxAdapter(child: DisplayAya(items: quranDetailsViewModel.pageVerses)),
            SliverFillRemaining(hasScrollBody: false,child: Align(alignment: Alignment.bottomCenter,child: Text(quranDetailsViewModel.pageVerses[0].page.toString(),style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri,)))
          ],
      ),
    );
    // SliverFillRemaining(hasScrollBody: false,child: Text("1",style: settingsProvider.themeApp.font20SecondPrimaryRegularAmiri,))
  }
}
