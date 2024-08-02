import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_tap/presentation/view/quran_tap/view/widgets/display_surah_name_and_number_of_verses_in_the_surah.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../core/utils/widgets/custom_circular_progress_indicator.dart';
import '../../../../../../../../core/utils/widgets/display_error_message.dart';
import '../../../../view_model/quran_tap_view_model.dart';

class ListOfSurahNameAndNumberOfVersesInTheSurah extends StatefulWidget {
  const ListOfSurahNameAndNumberOfVersesInTheSurah({super.key});

  @override
  State<ListOfSurahNameAndNumberOfVersesInTheSurah> createState() => _ListOfSurahNameAndNumberOfVersesInTheSurahState();
}

class _ListOfSurahNameAndNumberOfVersesInTheSurahState extends State<ListOfSurahNameAndNumberOfVersesInTheSurah> {
  @override
  void initState() {
    super.initState();
    Provider.of<QuranTapViewModel>(context,listen: false).fetchInformationAboutTheSurah();
  }
  @override
  Widget build(BuildContext context) {
    var quranViewModel = Provider.of<QuranTapViewModel>(context);
    if(quranViewModel.itemsInformationAboutTheSurahModel == null && quranViewModel.errorMessage == null){
      return const SliverFillRemaining(child: CustomCircularProgressIndicator());
    }else if(quranViewModel.errorMessage != null){
      return SliverFillRemaining(child: DisplayErrorMessage(errorMessage: quranViewModel.errorMessage!));
    }else{
      return SliverList.builder(itemBuilder: (context, index) => DisplaySurahNameAndNumberOfVersesInTheSurah(informationAboutTheSurahModel: quranViewModel.itemsInformationAboutTheSurahModel![index]),itemCount: quranViewModel.itemsInformationAboutTheSurahModel?.length,);
    }
  }
}

