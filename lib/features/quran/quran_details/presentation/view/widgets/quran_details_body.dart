import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/widgets/custom_circular_progress_indicator.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view/widgets/display_the_page.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';
import 'package:islamic_app/features/quran/quran_tap/data/model/Data.dart';
import 'package:provider/provider.dart';
import 'custom_background_container_for_quran_details.dart';


class QuranDetailsBody extends StatefulWidget {
  const QuranDetailsBody({super.key, required this.informationAboutTheSurahModel});
  final InformationAboutTheSurahModel informationAboutTheSurahModel;
  @override
  State<QuranDetailsBody> createState() => _QuranDetailsBodyState();
}

class _QuranDetailsBodyState extends State<QuranDetailsBody> {
  @override
  void initState() {
    super.initState();
    Provider.of<QuranDetailsViewModel>(context,listen: false).informationAboutTheSurahModel = widget.informationAboutTheSurahModel;
    fetchAyahs();
  }
  @override
  Widget build(BuildContext context) {
    QuranDetailsViewModel quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context);
    if(quranDetailsViewModel.pageVerses.isEmpty){
      return const CustomBackgroundContainerForQuranDetails(
        child: CustomCircularProgressIndicator(),
      );
    }else{
      return const CustomBackgroundContainerForQuranDetails(
        child: DisplayThePage(),
      );
    }
  }
  Future<void> fetchAyahs()async{
    QuranDetailsViewModel quranDetailsViewModel = Provider.of<QuranDetailsViewModel>(context,listen: false);
    await quranDetailsViewModel.fetchVersesOfTheSurah(widget.informationAboutTheSurahModel.number!.toInt()-1);
    quranDetailsViewModel.filterTheSurahByPage(surahNumber: widget.informationAboutTheSurahModel.number!.toInt(),page: 1);
  }
}