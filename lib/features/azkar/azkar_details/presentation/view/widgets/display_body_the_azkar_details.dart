import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/widgets/custom_circular_progress_indicator.dart';
import 'package:islamic_app/features/azkar/azkar_details/presentation/view_model/azkar_details_view_model.dart';
import 'package:provider/provider.dart';
import 'display_list_of_the_azkar_details.dart';

class DisplayBodyTheAzkarDetails extends StatefulWidget {
  const DisplayBodyTheAzkarDetails({super.key});

  @override
  State<DisplayBodyTheAzkarDetails> createState() => _DisplayBodyTheAzkarDetailsState();
}

class _DisplayBodyTheAzkarDetailsState extends State<DisplayBodyTheAzkarDetails> {
  @override
  void initState() {
    super.initState();
    Provider.of<AzkarDetailsViewModel>(context,listen: false).fetchDetailsTheZakr();
  }
  @override
  Widget build(BuildContext context) {
    AzkarDetailsViewModel azkarDetailsViewModel = Provider.of<AzkarDetailsViewModel>(context);
    if(azkarDetailsViewModel.itemsOfZakrModel.isEmpty){
      return const CustomCircularProgressIndicator();
    }else{
      return const DisplayListOfTheAzkarDetails();
    }
  }
}


