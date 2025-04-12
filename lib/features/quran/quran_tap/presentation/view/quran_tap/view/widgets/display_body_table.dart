import 'package:flutter/material.dart';
import 'package:islamic_app/features/quran/quran_details/presentation/view_model/quran_details_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../../../../core/utils/widgets/custom_circular_progress_indicator.dart';
import '../../../../../../../../core/utils/widgets/display_error_message.dart';
import '../../../../view_model/quran_tap_view_model.dart';
import 'display_list_of_surah_name_and_verses_number.dart';

class DisplayBodyTable extends StatefulWidget {
  const DisplayBodyTable({super.key});

  @override
  State<DisplayBodyTable> createState() => _DisplayBodyTableState();
}

class _DisplayBodyTableState extends State<DisplayBodyTable> {
  @override
  void initState() {
    super.initState();
    Provider.of<QuranTapViewModel>(context,listen: false).fetchInformationAboutTheSurah();
  }
  @override
  Widget build(BuildContext context) {
    var quranViewModel = Provider.of<QuranTapViewModel>(context);
    Provider.of<QuranDetailsViewModel>(context);
    if(quranViewModel.itemsInformationAboutTheSurahModel == null && quranViewModel.errorMessage == null){
      return const SliverFillRemaining(child: CustomCircularProgressIndicator());
    }else if(quranViewModel.errorMessage != null){
      return SliverFillRemaining(child: DisplayErrorMessage(errorMessage: quranViewModel.errorMessage!));
    }else{
      return DisplayListOfSurahNameAndVersesNumber(quranViewModel: quranViewModel);
    }
  }
}
