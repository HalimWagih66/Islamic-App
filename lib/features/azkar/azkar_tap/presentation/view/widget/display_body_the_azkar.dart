import 'package:flutter/material.dart';
import 'package:islamic_app/features/azkar/azkar_tap/presentation/view_model/azkar_tap_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../../core/utils/widgets/custom_circular_progress_indicator.dart';
import 'display_list_of_azkar.dart';

class DisplayBodyTheAzkar extends StatefulWidget {
  const DisplayBodyTheAzkar({super.key});

  @override
  State<DisplayBodyTheAzkar> createState() => _DisplayBodyTheAzkarState();
}

class _DisplayBodyTheAzkarState extends State<DisplayBodyTheAzkar> {
  @override
  void initState() {
    super.initState();
    Provider.of<AzkarTapViewModel>(context,listen: false).fetchAzkarTitle();
  }
  @override
  Widget build(BuildContext context) {
    AzkarTapViewModel tasbeehTapViewModel = Provider.of<AzkarTapViewModel>(context);
    if(tasbeehTapViewModel.azkarTitles.isEmpty){
      return const SliverFillRemaining(child: CustomCircularProgressIndicator());
    }else{
      return DisplayListOfAzkar(tasbeehTapViewModel: tasbeehTapViewModel);
    }
  }
}


